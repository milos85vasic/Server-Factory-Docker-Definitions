require ["fileinto","mailbox"];

if header :contains ["X-Virus-Status"] "Infected" {

    fileinto "INBOX/Quarantine";
    stop;
}

if anyof(
    header :contains ["X-Spam-Flag"] "YES",
    header :contains ["X-Spam"] "Yes",
    header :contains ["Subject"] "*** SPAM ***"
    )
{

    fileinto :create "INBOX/Spam";
    stop;
}

if header :contains ["X-Spamd-Result"] "False" {

    fileinto "INBOX";
} else {

    fileinto "INBOX/Unclassified";
    stop;
}

if header :contains ["X-Virus-Scanned"] "amavisd-new" {

    fileinto "INBOX";
    stop;
} else {

    fileinto "INBOX/Unscanned";
    stop;
}
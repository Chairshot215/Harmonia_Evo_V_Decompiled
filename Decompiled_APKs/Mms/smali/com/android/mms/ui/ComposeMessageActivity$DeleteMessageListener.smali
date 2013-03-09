.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteAll:Z

.field private mDeleteLockedMessages:Z

.field private mDeleteUri:Landroid/net/Uri;

.field private mHtcDeleteUri:Landroid/net/Uri;

.field private mHtcThreadId:J

.field private mMsgType:Ljava/lang/String;

.field private mSmsGroupId:J

.field private mThreadId:J

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V
    .locals 5
    .parameter
    .parameter "threadId"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1897
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1869
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 1873
    iput-wide v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J

    .line 1899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    .line 1900
    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    .line 1901
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    iput-wide v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    .line 1902
    :cond_0
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1903
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 1904
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1908
    :goto_0
    return-void

    .line 1906
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;JJZZ)V
    .locals 4
    .parameter
    .parameter "threadId"
    .parameter "htcThreadId"
    .parameter "isContactBase"
    .parameter "delAll"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 1876
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1869
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 1873
    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J

    .line 1877
    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    .line 1878
    iput-wide p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcThreadId:J

    .line 1879
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    .line 1880
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcThreadId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcThreadId:J

    .line 1882
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1884
    iput-boolean p7, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    .line 1885
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 1886
    if-eqz p6, :cond_2

    .line 1887
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 1892
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 1936
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1869
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 1873
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J

    .line 1938
    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMsgType:Ljava/lang/String;

    .line 1939
    const-string v0, "mms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1940
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1947
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    .line 1948
    return-void

    .line 1941
    :cond_1
    const-string v0, "sms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1942
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0

    .line 1943
    :cond_2
    const-string v0, "htcmsgs"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    sget-object v0, Landroid/provider/Telephony$HtcMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;JZ)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "smsGroupId"
    .parameter "all"

    .prologue
    .line 1912
    invoke-direct {p0, p1, p2, p5}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 1913
    iput-wide p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J

    .line 1914
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter "uri"
    .parameter "all"

    .prologue
    const/4 v0, 0x0

    .line 1916
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1869
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 1873
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J

    .line 1918
    if-nez p3, :cond_0

    .line 1921
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMsgType:Ljava/lang/String;

    .line 1924
    :cond_0
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1925
    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    .line 1927
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    .line 1934
    :cond_1
    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1866
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1866
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMsgType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1866
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mSmsGroupId:J

    return-wide v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1866
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcThreadId:J

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1866
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mThreadId:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1959
    const-string v1, "ComposeMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete uri> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const-string v1, "ComposeMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete mHtcDeleteUri> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mHtcDeleteUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteAll:Z

    if-eqz v1, :cond_0

    .line 1968
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isDiscard:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 1971
    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, cid:Ljava/lang/String;
    const-string v1, "ComposeMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeleteAll => langflag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;

    .line 1975
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;->show()V

    .line 1987
    .end local v0           #cid:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2070
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->refreshMsgTextEditorFocus()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2071
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 1953
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mDeleteLockedMessages:Z

    .line 1954
    return-void
.end method

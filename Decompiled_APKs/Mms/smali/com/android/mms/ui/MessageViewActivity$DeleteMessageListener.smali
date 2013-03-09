.class Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageViewActivity;I)V
    .locals 3
    .parameter
    .parameter "msgId"

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1956
    #calls: Lcom/android/mms/ui/MessageViewActivity;->isMmsMessage()Z
    invoke-static {p1}, Lcom/android/mms/ui/MessageViewActivity;->access$700(Lcom/android/mms/ui/MessageViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 1964
    :goto_0
    return-void

    .line 1962
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "whichButton"

    .prologue
    .line 1969
    const-string v0, "MessageViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    new-instance v1, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/MessageViewActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    .line 1972
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;->show()V

    .line 1974
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2003
    return-void
.end method

.class Lcom/htc/android/mail/MailList$QueryHandler$5;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$QueryHandler;

.field final synthetic val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$QueryHandler;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5920
    iput-object p1, p0, Lcom/htc/android/mail/MailList$QueryHandler$5;->this$1:Lcom/htc/android/mail/MailList$QueryHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$QueryHandler$5;->val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5922
    iget-object v0, p0, Lcom/htc/android/mail/MailList$QueryHandler$5;->this$1:Lcom/htc/android/mail/MailList$QueryHandler;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$QueryHandler;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v1, 0x0

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/htc/android/mail/MailList$QueryHandler$5;->val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    #calls: Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->access$6900(Lcom/htc/android/mail/MailList;Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 5923
    return-void
.end method

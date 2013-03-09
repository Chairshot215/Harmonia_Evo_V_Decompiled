.class Lcom/htc/android/mail/ComposeActivity$87;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->loadUI(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10012
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$87;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10014
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$87;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->setBindService(Landroid/content/Context;)V

    .line 10015
    return-void
.end method

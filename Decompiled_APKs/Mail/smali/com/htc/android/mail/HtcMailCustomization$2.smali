.class Lcom/htc/android/mail/HtcMailCustomization$2;
.super Ljava/lang/Object;
.source "HtcMailCustomization.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/HtcMailCustomization;->preInstallAccount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/HtcMailCustomization;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/HtcMailCustomization;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/htc/android/mail/HtcMailCustomization$2;->this$0:Lcom/htc/android/mail/HtcMailCustomization;

    iput-object p2, p0, Lcom/htc/android/mail/HtcMailCustomization$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/htc/android/mail/HtcMailCustomization$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/mailservice/MailService;->actionReschedulePeak(Landroid/content/Context;)V

    .line 1329
    return-void
.end method

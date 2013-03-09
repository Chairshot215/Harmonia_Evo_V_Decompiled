.class final Lcom/htc/android/mail/MailShortcut$5;
.super Ljava/lang/Object;
.source "MailShortcut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailShortcut;->updateMailShortcutNewIdInLine(Landroid/content/Context;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newAccountId:J

.field final synthetic val$oldAccountId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/htc/android/mail/MailShortcut$5;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/android/mail/MailShortcut$5;->val$oldAccountId:J

    iput-wide p4, p0, Lcom/htc/android/mail/MailShortcut$5;->val$newAccountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 551
    iget-object v0, p0, Lcom/htc/android/mail/MailShortcut$5;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/android/mail/MailShortcut$5;->val$oldAccountId:J

    iget-wide v3, p0, Lcom/htc/android/mail/MailShortcut$5;->val$newAccountId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutNewId(Landroid/content/Context;JJ)V

    .line 552
    return-void
.end method

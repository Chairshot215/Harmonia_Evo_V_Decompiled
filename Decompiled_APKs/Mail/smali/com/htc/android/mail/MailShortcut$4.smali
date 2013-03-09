.class final Lcom/htc/android/mail/MailShortcut$4;
.super Ljava/lang/Object;
.source "MailShortcut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailShortcut;->clearMailShortcutInLine(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/htc/android/mail/MailShortcut$4;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/android/mail/MailShortcut$4;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/android/mail/MailShortcut$4;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/android/mail/MailShortcut$4;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailShortcut;->clearMailShortcut(Landroid/content/Context;J)V

    .line 542
    return-void
.end method

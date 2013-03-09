.class final Lcom/htc/android/mail/MailShortcut$3;
.super Ljava/lang/Object;
.source "MailShortcut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:J

.field final synthetic val$checkCache:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/htc/android/mail/MailShortcut$3;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/android/mail/MailShortcut$3;->val$accountId:J

    iput-boolean p4, p0, Lcom/htc/android/mail/MailShortcut$3;->val$checkCache:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/android/mail/MailShortcut$3;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/android/mail/MailShortcut$3;->val$accountId:J

    iget-boolean v3, p0, Lcom/htc/android/mail/MailShortcut$3;->val$checkCache:Z

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcut(Landroid/content/Context;JZ)V

    .line 532
    return-void
.end method

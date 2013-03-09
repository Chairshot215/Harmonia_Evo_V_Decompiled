.class final Lcom/htc/android/mail/MailShortcut$1;
.super Ljava/lang/Object;
.source "MailShortcut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailShortcut;->updateMailAPshortcutInLine(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkCache:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/htc/android/mail/MailShortcut$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/htc/android/mail/MailShortcut$1;->val$checkCache:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/android/mail/MailShortcut$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/android/mail/MailShortcut$1;->val$checkCache:Z

    #calls: Lcom/htc/android/mail/MailShortcut;->updateMailAPshortcut(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailShortcut;->access$100(Landroid/content/Context;Z)V

    .line 512
    return-void
.end method

.class Lcom/htc/android/mail/MailList$MailListAdapter$1;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$MailListAdapter;

.field final synthetic val$old:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$MailListAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/htc/android/mail/MailList$MailListAdapter$1;->this$1:Lcom/htc/android/mail/MailList$MailListAdapter;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$MailListAdapter$1;->val$old:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListAdapter$1;->val$old:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 556
    return-void
.end method

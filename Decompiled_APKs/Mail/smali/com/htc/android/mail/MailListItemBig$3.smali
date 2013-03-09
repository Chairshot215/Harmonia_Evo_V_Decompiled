.class Lcom/htc/android/mail/MailListItemBig$3;
.super Ljava/lang/Object;
.source "MailListItemBig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListItemBig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListItemBig;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListItemBig;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/android/mail/MailListItemBig$3;->this$0:Lcom/htc/android/mail/MailListItemBig;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$3;->this$0:Lcom/htc/android/mail/MailListItemBig;

    #getter for: Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/htc/android/mail/MailListItemBig;->access$500(Lcom/htc/android/mail/MailListItemBig;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 348
    return-void
.end method

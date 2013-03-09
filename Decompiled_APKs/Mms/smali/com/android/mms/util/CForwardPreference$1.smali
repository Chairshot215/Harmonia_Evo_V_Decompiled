.class Lcom/android/mms/util/CForwardPreference$1;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/CForwardPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/CForwardPreference;


# direct methods
.method constructor <init>(Lcom/android/mms/util/CForwardPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/android/mms/util/CForwardPreference$1;->this$0:Lcom/android/mms/util/CForwardPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/mms/util/CForwardPreference$1;->this$0:Lcom/android/mms/util/CForwardPreference;

    #getter for: Lcom/android/mms/util/CForwardPreference;->m_atyParent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/util/CForwardPreference;->access$000(Lcom/android/mms/util/CForwardPreference;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/CForwardPreference$1;->this$0:Lcom/android/mms/util/CForwardPreference;

    #getter for: Lcom/android/mms/util/CForwardPreference;->m_itContact:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/mms/util/CForwardPreference;->access$100(Lcom/android/mms/util/CForwardPreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/mms/util/CForwardPreference$1;->this$0:Lcom/android/mms/util/CForwardPreference;

    #getter for: Lcom/android/mms/util/CForwardPreference;->m_atyParent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/util/CForwardPreference;->access$000(Lcom/android/mms/util/CForwardPreference;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/CForwardPreference$1;->this$0:Lcom/android/mms/util/CForwardPreference;

    #getter for: Lcom/android/mms/util/CForwardPreference;->m_itContact:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/util/CForwardPreference;->access$100(Lcom/android/mms/util/CForwardPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference$1;->this$0:Lcom/android/mms/util/CForwardPreference;

    #getter for: Lcom/android/mms/util/CForwardPreference;->m_nIDResult:I
    invoke-static {v2}, Lcom/android/mms/util/CForwardPreference;->access$200(Lcom/android/mms/util/CForwardPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1199
    :cond_0
    return-void
.end method

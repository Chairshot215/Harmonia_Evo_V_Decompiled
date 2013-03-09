.class Lcom/android/phone/EditMSISDNContactScreen$1;
.super Ljava/lang/Object;
.source "EditMSISDNContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditMSISDNContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditMSISDNContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditMSISDNContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/phone/EditMSISDNContactScreen$1;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen$1;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    #getter for: Lcom/android/phone/EditMSISDNContactScreen;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditMSISDNContactScreen;->access$000(Lcom/android/phone/EditMSISDNContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen$1;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    #calls: Lcom/android/phone/EditMSISDNContactScreen;->setMSISDN()V
    invoke-static {v0}, Lcom/android/phone/EditMSISDNContactScreen;->access$100(Lcom/android/phone/EditMSISDNContactScreen;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen$1;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    #getter for: Lcom/android/phone/EditMSISDNContactScreen;->mCancelBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/EditMSISDNContactScreen;->access$200(Lcom/android/phone/EditMSISDNContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/phone/EditMSISDNContactScreen$1;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditMSISDNContactScreen;->finish()V

    goto :goto_0
.end method

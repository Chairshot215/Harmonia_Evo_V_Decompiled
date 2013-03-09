.class Lcom/htc/opensense/widget/BaseLoginActivity$4;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/BaseLoginActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$4;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$4;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    iget-object v1, v1, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$4;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    iget-object v1, v1, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 269
    .local v0, cursorPosition:I
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$4;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    #calls: Lcom/htc/opensense/widget/BaseLoginActivity;->setShowPassword(Z)V
    invoke-static {v1, p2}, Lcom/htc/opensense/widget/BaseLoginActivity;->access$000(Lcom/htc/opensense/widget/BaseLoginActivity;Z)V

    .line 270
    if-ltz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$4;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    iget-object v1, v1, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 273
    .end local v0           #cursorPosition:I
    :cond_0
    return-void
.end method

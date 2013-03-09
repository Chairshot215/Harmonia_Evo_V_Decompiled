.class Lcom/htc/socialnetwork/account/BaseLoginActivity$3;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$3;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$3;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    #calls: Lcom/htc/socialnetwork/account/BaseLoginActivity;->setShowPassword(Z)V
    invoke-static {v0, p2}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->access$000(Lcom/htc/socialnetwork/account/BaseLoginActivity;Z)V

    .line 382
    return-void
.end method

.class Lcom/htc/opensense/widget/BaseLoginActivity$1;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/BaseLoginActivity;->setLogoutUI(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 153
    iput-object p1, p0, Lcom/htc/opensense/widget/BaseLoginActivity$1;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity$1;->this$0:Lcom/htc/opensense/widget/BaseLoginActivity;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/BaseLoginActivity;->showDialog(I)V

    .line 156
    return-void
.end method

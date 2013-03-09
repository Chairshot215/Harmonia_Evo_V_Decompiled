.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$3;
.super Ljava/lang/Object;
.source "ContactSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->addGroup()V

    .line 292
    return-void
.end method

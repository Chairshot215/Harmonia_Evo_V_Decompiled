.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;
.super Ljava/lang/Object;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupListItemPool"
.end annotation


# instance fields
.field pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 894
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;->pool:Ljava/util/ArrayList;

    .line 894
    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 904
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;

    .line 906
    .local v1, item:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;
    iget-object v2, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->photoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 908
    iget-object v2, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 909
    iput-object v3, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->bitmap:Landroid/graphics/Bitmap;

    .line 910
    iput-object v3, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->txtviewGroupName:Landroid/widget/TextView;

    .line 911
    iput-object v3, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;->txtviewGroupMemberCount:Landroid/widget/TextView;

    goto :goto_0

    .line 914
    .end local v1           #item:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;
    :cond_1
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 915
    return-void
.end method

.method public getItem()Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;
    .locals 2

    .prologue
    .line 897
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;)V

    .line 898
    .local v0, item:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    return-object v0
.end method

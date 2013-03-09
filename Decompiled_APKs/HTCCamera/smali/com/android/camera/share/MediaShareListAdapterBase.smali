.class public abstract Lcom/android/camera/share/MediaShareListAdapterBase;
.super Landroid/widget/BaseAdapter;
.source "MediaShareListAdapterBase.java"


# instance fields
.field private final m_AppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/share/ExternalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is NULL in MediaShareListAdapterBase()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_Context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final getAppInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/share/ExternalAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/android/camera/widget/AppListItem;

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/camera/widget/AppListItem;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v3, p0, Lcom/android/camera/share/MediaShareListAdapterBase;->m_AppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapterBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/AppListItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/AppListItem;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/camera/widget/AppListItem;

    goto :goto_0
.end method

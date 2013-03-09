.class Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;
.super Landroid/widget/BaseAdapter;
.source "WidgetConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/WidgetConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CorpusAdapter"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mCorpora:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, corpora:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivity:Landroid/app/Activity;

    .line 97
    iput-object p2, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mCorpora:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivity:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivityManager:Landroid/app/ActivityManager;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getBackend(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v0

    return v0
.end method

.method private getBackendIcon(I)I
    .locals 1
    .parameter "backend"

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 134
    :pswitch_0
    const v0, 0x7f030007

    :goto_0
    return v0

    .line 123
    :pswitch_1
    const v0, 0x7f030006

    goto :goto_0

    .line 125
    :pswitch_2
    const v0, 0x7f030003

    goto :goto_0

    .line 127
    :pswitch_3
    const/high16 v0, 0x7f03

    goto :goto_0

    .line 129
    :pswitch_4
    const v0, 0x7f030002

    goto :goto_0

    .line 131
    :pswitch_5
    const v0, 0x7f030005

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mCorpora:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mCorpora:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->getBackend(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 140
    if-nez p2, :cond_0

    .line 141
    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040115

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;

    .line 146
    .local v4, holder:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;
    if-nez v4, :cond_1

    .line 147
    new-instance v4, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;

    .end local v4           #holder:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;
    invoke-direct {v4, p2}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;-><init>(Landroid/view/View;)V

    .line 150
    .restart local v4       #holder:Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->getBackend(I)I

    move-result v0

    .line 151
    .local v0, backend:I
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v1

    .line 153
    .local v1, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    iget-object v6, v4, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 156
    .local v3, density:I
    invoke-direct {p0, v0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->getBackendIcon(I)I

    move-result v5

    .line 157
    .local v5, icon:I
    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 158
    .local v2, d:Landroid/graphics/drawable/Drawable;
    iget-object v6, v4, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v6, v4, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;->container:Landroid/view/ViewGroup;

    new-instance v7, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter$1;-><init>(Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-object p2
.end method

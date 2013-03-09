.class Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AcuDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/AcuDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemsAdapter"
.end annotation


# instance fields
.field public imageLoader:Lcom/android/updater/util/IconDownloader;

.field final synthetic this$0:Lcom/android/updater/ui/AcuDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/updater/ui/AcuDetailActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->this$0:Lcom/android/updater/ui/AcuDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 106
    new-instance v0, Lcom/android/updater/util/IconDownloader;

    #getter for: Lcom/android/updater/ui/AcuDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/updater/ui/AcuDetailActivity;->access$000(Lcom/android/updater/ui/AcuDetailActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/updater/util/IconDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->imageLoader:Lcom/android/updater/util/IconDownloader;

    .line 107
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->this$0:Lcom/android/updater/ui/AcuDetailActivity;

    #getter for: Lcom/android/updater/ui/AcuDetailActivity;->mApkDetailList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/updater/ui/AcuDetailActivity;->access$100(Lcom/android/updater/ui/AcuDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->this$0:Lcom/android/updater/ui/AcuDetailActivity;

    #getter for: Lcom/android/updater/ui/AcuDetailActivity;->mApkDetailList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/updater/ui/AcuDetailActivity;->access$100(Lcom/android/updater/ui/AcuDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 123
    const/4 v4, 0x0

    .line 126
    .local v4, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 127
    iget-object v7, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->this$0:Lcom/android/updater/ui/AcuDetailActivity;

    #getter for: Lcom/android/updater/ui/AcuDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/updater/ui/AcuDetailActivity;->access$000(Lcom/android/updater/ui/AcuDetailActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 128
    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 129
    new-instance v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;

    invoke-direct {v2}, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;-><init>()V

    .line 131
    .local v2, holder:Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;
    const v7, 0x7f080007

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkIcon:Landroid/widget/ImageView;

    .line 132
    const v7, 0x7f080009

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkName:Landroid/widget/TextView;

    .line 133
    const v7, 0x7f080008

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkStatus:Landroid/widget/TextView;

    .line 134
    const v7, 0x7f08000a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkDescription:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, splitString:Ljava/lang/String;
    const-string v7, "@~"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, tempString:[Ljava/lang/String;
    iget-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkName:Landroid/widget/TextView;

    aget-object v8, v6, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkStatus:Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    .local v0, apkSize:I
    const-string v1, ""

    .line 149
    .local v1, apkSizeString:Ljava/lang/String;
    const/high16 v7, 0x10

    if-lt v0, v7, :cond_1

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/updater/util/UpdaterUtil;->byteToMBString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->this$0:Lcom/android/updater/ui/AcuDetailActivity;

    #getter for: Lcom/android/updater/ui/AcuDetailActivity;->mMB:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/updater/ui/AcuDetailActivity;->access$200(Lcom/android/updater/ui/AcuDetailActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_1
    iget-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkDescription:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v7, 0x5

    aget-object v3, v6, v7

    .line 159
    .local v3, iconDownloadPath:Ljava/lang/String;
    iget-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 161
    const-string v7, "empty"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    iget-object v7, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkIcon:Landroid/widget/ImageView;

    const v8, 0x1080093

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    :goto_2
    return-object p2

    .line 137
    .end local v0           #apkSize:I
    .end local v1           #apkSizeString:Ljava/lang/String;
    .end local v2           #holder:Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;
    .end local v3           #iconDownloadPath:Ljava/lang/String;
    .end local v5           #splitString:Ljava/lang/String;
    .end local v6           #tempString:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;

    .restart local v2       #holder:Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;
    goto/16 :goto_0

    .line 152
    .restart local v0       #apkSize:I
    .restart local v1       #apkSizeString:Ljava/lang/String;
    .restart local v5       #splitString:Ljava/lang/String;
    .restart local v6       #tempString:[Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v8, v0, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->this$0:Lcom/android/updater/ui/AcuDetailActivity;

    #getter for: Lcom/android/updater/ui/AcuDetailActivity;->mKB:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/updater/ui/AcuDetailActivity;->access$300(Lcom/android/updater/ui/AcuDetailActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 164
    .restart local v3       #iconDownloadPath:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/updater/ui/AcuDetailActivity$ItemsAdapter;->imageLoader:Lcom/android/updater/util/IconDownloader;

    iget-object v8, v2, Lcom/android/updater/ui/AcuDetailActivity$ViewHolder;->apkIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v3, v8}, Lcom/android/updater/util/IconDownloader;->ShowIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2
.end method

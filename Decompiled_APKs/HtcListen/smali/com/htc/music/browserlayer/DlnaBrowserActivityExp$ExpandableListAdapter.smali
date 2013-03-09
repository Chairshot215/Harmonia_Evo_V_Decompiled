.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandableListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x2080245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    invoke-virtual {v4, v5, p5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    :cond_0
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v2

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    const v4, 0x7f080043

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f080042

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    const-string v4, "DLNA"

    const-string v5, "music folder"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    const v4, 0x7f020003

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    :goto_0
    return-object p4

    :cond_1
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    const v4, 0x7f0700c7

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const v4, 0x208024f

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    const-string v4, "DLNA"

    const-string v5, "get child view, show default icon"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    if-nez p3, :cond_0

    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03000d

    invoke-virtual {v8, v9, p4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    const v8, 0x7f080043

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    const v8, 0x7f080042

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v9

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v6, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetParentID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    const v8, 0x208024f

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v9

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v6, v10}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-object p3

    :cond_2
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v8, v3, v9}, Lcom/htc/music/util/MusicUtils;->getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->SetImg(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v8, "DLNA"

    const-string v9, "getView()...(filePath != null)...mService is null..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_2
    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_7
    :try_start_3
    const-string v8, "DLNA"

    const-string v9, "getView()...(filePath == null)...mService is null..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/htc/WifiRouter/UserManagement;
.super Landroid/app/Activity;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/WifiRouter/UserManagement$UiHandler;,
        Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;,
        Lcom/htc/WifiRouter/UserManagement$DeviceListAdapter;,
        Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;,
        Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_USER:I = 0x10

.field private static final SAVE_ALLOWED_USER_DIALOG:Ljava/lang/String; = "allowed_user"

.field public static mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ClientInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field private allowed_only:Z

.field private b_dirty:Z

.field private b_size:I

.field private blistAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectedCount:I

.field private connection_array:I

.field private d_size:I

.field private devicelistAdapter:Lcom/htc/WifiRouter/UserManagement$DeviceListAdapter;

.field private dialogIsOn:Z

.field private listItemHeight:I

.field private mAllowUsersGroup:Lcom/htc/widget/HtcListItem;

.field private mAllowedUserDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mAllowedUserDialogShowed:Z

.field private mAllowedUserListener:Landroid/view/View$OnClickListener;

.field private mBlistContainer:Lcom/htc/widget/HtcListView;

.field private mBlistLayout:Landroid/widget/LinearLayout;

.field private mBlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;

.field private mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDeviceContainer:Lcom/htc/widget/HtcListView;

.field private mDeviceLayout:Landroid/widget/LinearLayout;

.field private mDevicelistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mHotspotStateFilter:Landroid/content/IntentFilter;

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mMaxConnectListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field private mMaxConnection:Landroid/widget/TextView;

.field private mMaxCount:Lcom/htc/widget/HtcSpinner;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestContainer:Lcom/htc/widget/HtcListView;

.field private mRequestLayout:Landroid/widget/LinearLayout;

.field private mRequestlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mUIHandler:Lcom/htc/WifiRouter/UserManagement$UiHandler;

.field private mUserManageInfo:Landroid/widget/TextView;

.field private mUserManageLabel:Lcom/htc/widget/HtcListItem2LineText;

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWlistContainer:Lcom/htc/widget/HtcListView;

.field private mWlistLayout:Landroid/widget/LinearLayout;

.field private mWlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private max_connection:I

.field private mblistSeparator:Landroid/widget/RelativeLayout;

.field private mdevicelistSeparator:Landroid/widget/RelativeLayout;

.field private mrlistSeparator:Landroid/widget/RelativeLayout;

.field private mwlistSeparator:Landroid/widget/RelativeLayout;

.field private r_dirty:Z

.field private r_size:I

.field private rlistAdapter:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

.field private w_dirty:Z

.field private w_size:I

.field private wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, "UserManagement"

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->TAG:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/htc/WifiRouter/UserManagement;->connectedCount:I

    .line 68
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/WifiRouter/UserManagement;->connection_array:I

    .line 69
    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I

    .line 94
    iput-boolean v2, p0, Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z

    .line 95
    iput-boolean v2, p0, Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z

    .line 96
    iput-boolean v2, p0, Lcom/htc/WifiRouter/UserManagement;->r_dirty:Z

    .line 97
    iput-boolean v2, p0, Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;-><init>(Lcom/htc/WifiRouter/UserManagement;Lcom/htc/WifiRouter/UserManagement$1;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 110
    iput-boolean v2, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z

    .line 201
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$1;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$1;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 751
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$5;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$5;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxConnectListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 770
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$6;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$6;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserListener:Landroid/view/View$OnClickListener;

    .line 866
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$11;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$11;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 923
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$12;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$12;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1005
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$13;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$13;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1067
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$14;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$14;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1076
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$15;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$15;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDevicelistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1151
    return-void
.end method

.method static synthetic access$100(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/UserManagement;->addMacToWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowUsersGroup:Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxConnection:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/WifiRouter/UserManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mrlistSeparator:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/WifiRouter/UserManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->rlistAdapter:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/WifiRouter/UserManagement;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/UserManagement;->addMacToBlackList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/WifiRouter/UserManagement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/WifiRouter/UserManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/WifiRouter/UserManagement;->max_connection:I

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/WifiRouter/UserManagement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/WifiRouter/UserManagement;->max_connection:I

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->updateHotspotProfile()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListItemCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->updateHotspotMacFilter()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->reLayout()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->showAllowedUserDialog()V

    return-void
.end method

.method static synthetic access$2702(Lcom/htc/WifiRouter/UserManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/WifiRouter/UserManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/WifiRouter/UserManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/WifiRouter/UserManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/WifiRouter/UserManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->blistAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/WifiRouter/UserManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/WifiRouter/UserManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/WifiRouter/UserManagement;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/UserManagement;->addToBlistFromWlist(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/WifiRouter/UserManagement;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/WifiRouter/UserManagement;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/UserManagement;->addToWlistFromBlist(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->relayoutList()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/WifiRouter/UserManagement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/UserManagement;->updateIPtable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/WifiRouter/UserManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/WifiRouter/UserManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->updateWlistView()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->relayoutDeviceList()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/UserManagement;->relayoutRequestList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/WifiRouter/UserManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/WifiRouter/UserManagement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I

    return p1
.end method

.method private addMacToBlackList(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    .line 840
    move-object v1, p1

    .line 841
    .local v1, macaddress:Ljava/lang/String;
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 842
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 844
    iput-boolean v5, p0, Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z

    .line 845
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->blistAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 846
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09005e

    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/UserManagement;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 864
    :goto_0
    return-void

    .line 848
    :cond_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090056

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09005d

    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/UserManagement;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090054

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 852
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f090052

    new-instance v3, Lcom/htc/WifiRouter/UserManagement$10;

    invoke-direct {v3, p0, v1}, Lcom/htc/WifiRouter/UserManagement$10;-><init>(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 862
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private addMacToWhiteList(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    .line 813
    move-object v1, p1

    .line 814
    .local v1, macaddress:Ljava/lang/String;
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 815
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 817
    iput-boolean v5, p0, Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z

    .line 818
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    invoke-virtual {v2}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->notifyDataSetChanged()V

    .line 819
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09005f

    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/UserManagement;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 837
    :goto_0
    return-void

    .line 821
    :cond_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090056

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09005d

    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/UserManagement;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090054

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 825
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f090052

    new-instance v3, Lcom/htc/WifiRouter/UserManagement$9;

    invoke-direct {v3, p0, v1}, Lcom/htc/WifiRouter/UserManagement$9;-><init>(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 835
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private addToBlistFromWlist(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 899
    :try_start_0
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z

    .line 903
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 905
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addToWlistFromBlist(I)V
    .locals 2
    .parameter "selectedPosition"

    .prologue
    .line 912
    :try_start_0
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z

    .line 916
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private convertArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1136
    .local v2, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1137
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1139
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1143
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1145
    .local v1, last_position:I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1148
    .end local v1           #last_position:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initLayout()V
    .locals 12

    .prologue
    const/high16 v4, 0x7f0b

    const v11, 0x2090026

    const v5, 0x2080700

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 524
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->setContentView(I)V

    .line 525
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowUsersGroup:Lcom/htc/widget/HtcListItem;

    .line 526
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mUserManageLabel:Lcom/htc/widget/HtcListItem2LineText;

    .line 527
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mUserManageLabel:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 528
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mUserManageLabel:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 529
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 530
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getMaxConns()I

    move-result v0

    iput v0, p0, Lcom/htc/WifiRouter/UserManagement;->max_connection:I

    .line 533
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getConnectionArray()I

    move-result v0

    iget v1, p0, Lcom/htc/WifiRouter/UserManagement;->connection_array:I

    if-eq v0, v1, :cond_0

    .line 534
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getConnectionArray()I

    move-result v0

    iput v0, p0, Lcom/htc/WifiRouter/UserManagement;->connection_array:I

    .line 537
    :cond_0
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getEnableMacFilter()I

    move-result v0

    if-nez v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 539
    iput-boolean v10, p0, Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z

    .line 545
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/WifiRouter/UserManagement;->connection_array:I

    new-array v7, v0, [Ljava/lang/CharSequence;

    .line 546
    .local v7, connection_item:[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget v0, p0, Lcom/htc/WifiRouter/UserManagement;->connection_array:I

    if-ge v9, v0, :cond_4

    .line 547
    if-nez v9, :cond_3

    .line 548
    const v0, 0x7f090064

    new-array v1, v3, [Ljava/lang/Object;

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/WifiRouter/UserManagement;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    .line 546
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 541
    .end local v7           #connection_item:[Ljava/lang/CharSequence;
    .end local v9           #i:I
    :cond_2
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 542
    iput-boolean v3, p0, Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z

    goto :goto_0

    .line 550
    .restart local v7       #connection_item:[Ljava/lang/CharSequence;
    .restart local v9       #i:I
    :cond_3
    const v0, 0x7f090063

    new-array v1, v3, [Ljava/lang/Object;

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/WifiRouter/UserManagement;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    goto :goto_2

    .line 553
    :cond_4
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v0, 0x20900ee

    invoke-direct {v6, p0, v0, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 555
    .local v6, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v0, 0x20900af

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 557
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxConnection:Landroid/widget/TextView;

    .line 558
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxConnection:Landroid/widget/TextView;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 559
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcSpinner;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    .line 560
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 561
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    iget v1, p0, Lcom/htc/WifiRouter/UserManagement;->max_connection:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 562
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxConnectListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 563
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    .line 565
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    .line 566
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 568
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 569
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 570
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 571
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 572
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10, v3}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 573
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistLayout:Landroid/widget/LinearLayout;

    .line 574
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    .line 575
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 578
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 579
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 580
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10, v3}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 581
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistLayout:Landroid/widget/LinearLayout;

    .line 582
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    .line 583
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 586
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 587
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 588
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10, v3}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 589
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceLayout:Landroid/widget/LinearLayout;

    .line 590
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    .line 591
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 594
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 595
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 596
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v10, v3}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 598
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mrlistSeparator:Landroid/widget/RelativeLayout;

    .line 599
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mrlistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 600
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mwlistSeparator:Landroid/widget/RelativeLayout;

    .line 601
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mwlistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 602
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mblistSeparator:Landroid/widget/RelativeLayout;

    .line 603
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mblistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 604
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mdevicelistSeparator:Landroid/widget/RelativeLayout;

    .line 605
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mdevicelistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 606
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    const v3, 0x7f030002

    sget-object v5, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;-><init>(Lcom/htc/WifiRouter/UserManagement;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->rlistAdapter:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    .line 607
    new-instance v0, Landroid/widget/ArrayAdapter;

    const/high16 v1, 0x7f03

    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->blistAdapter:Landroid/widget/ArrayAdapter;

    .line 608
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    const/high16 v3, 0x7f03

    sget-object v5, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;-><init>(Lcom/htc/WifiRouter/UserManagement;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    .line 609
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$DeviceListAdapter;

    const/high16 v3, 0x7f03

    sget-object v5, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/WifiRouter/UserManagement$DeviceListAdapter;-><init>(Lcom/htc/WifiRouter/UserManagement;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->devicelistAdapter:Lcom/htc/WifiRouter/UserManagement$DeviceListAdapter;

    .line 610
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 611
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 613
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcFooterButton;

    .line 614
    .local v8, doneButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$2;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$2;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    return-void
.end method

.method private initParament()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 436
    :cond_0
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    sput-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 439
    :cond_1
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    .line 444
    :cond_2
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    goto :goto_0

    .line 447
    :cond_3
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private loadMacAddress()V
    .locals 3

    .prologue
    .line 408
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    .line 413
    :goto_0
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    .line 418
    :goto_1
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getBlocklist()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/WifiRouter/UserManagement;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, blist:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 421
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/htc/WifiRouter/WifiRouter;->parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 423
    :cond_0
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getWhitelist()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/WifiRouter/UserManagement;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, wlist:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 426
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/htc/WifiRouter/WifiRouter;->parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 428
    :cond_1
    return-void

    .line 411
    .end local v0           #blist:Ljava/lang/String;
    .end local v1           #wlist:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 416
    :cond_3
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private reLayout()V
    .locals 13

    .prologue
    const/16 v12, 0x10

    const v11, 0x2020010

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 453
    iget-boolean v6, p0, Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 454
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 456
    .local v4, listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    .line 457
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, request_user:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mrlistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->rlistAdapter:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 460
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 461
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    if-lez v6, :cond_0

    .line 462
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    iget v7, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 463
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    :goto_0
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #listParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 470
    .restart local v4       #listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v6, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    .line 471
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, allowed_user:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mwlistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 475
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    if-lez v6, :cond_1

    .line 476
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    iget v7, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 477
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    :goto_1
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #listParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 484
    .restart local v4       #listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v6, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    .line 485
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, blocked_user:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mblistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->blistAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 488
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 489
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    if-lez v6, :cond_2

    .line 490
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    iget v7, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 491
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    .end local v0           #allowed_user:Ljava/lang/String;
    .end local v1           #blocked_user:Ljava/lang/String;
    .end local v5           #request_user:Ljava/lang/String;
    :goto_2
    return-void

    .line 466
    .restart local v5       #request_user:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 480
    .restart local v0       #allowed_user:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 494
    .restart local v1       #blocked_user:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 497
    .end local v0           #allowed_user:Ljava/lang/String;
    .end local v1           #blocked_user:Ljava/lang/String;
    .end local v4           #listParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #request_user:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_4

    .line 501
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getAssocListStr(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, deviceString:Ljava/lang/String;
    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 503
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 504
    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lcom/htc/WifiRouter/WifiRouter;->parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 507
    .end local v3           #deviceString:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 508
    .restart local v4       #listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    .line 509
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, connected_user:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mdevicelistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->max_connection:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->devicelistAdapter:Lcom/htc/WifiRouter/UserManagement$DeviceListAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 512
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement;->mDevicelistListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 513
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    if-lez v6, :cond_5

    .line 514
    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    iget v7, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    iget v8, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 515
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 518
    :cond_5
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private relayoutDeviceList()V
    .locals 5

    .prologue
    .line 674
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 675
    .local v1, listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    .line 677
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, connected_user:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mdevicelistSeparator:Landroid/widget/RelativeLayout;

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->max_connection:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget v2, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    if-lez v2, :cond_0

    .line 680
    iget v2, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    iget v3, p0, Lcom/htc/WifiRouter/UserManagement;->d_size:I

    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 681
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 683
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mDeviceLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private relayoutList()V
    .locals 11

    .prologue
    const v10, 0x2020010

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 690
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 691
    .local v2, listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v4, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    .line 692
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, request_user:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mrlistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    if-lez v4, :cond_0

    .line 696
    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    iget v5, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 697
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    :goto_0
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #listParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 703
    .restart local v2       #listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v4, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    .line 704
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, allowed_user:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mwlistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    if-lez v4, :cond_1

    .line 708
    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    iget v5, p0, Lcom/htc/WifiRouter/UserManagement;->w_size:I

    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 709
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 714
    :goto_1
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #listParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 715
    .restart local v2       #listParams:Landroid/widget/LinearLayout$LayoutParams;
    sget-object v4, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    .line 716
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, blocked_user:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mblistSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    if-lez v4, :cond_2

    .line 720
    iget v4, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    iget v5, p0, Lcom/htc/WifiRouter/UserManagement;->b_size:I

    iget v6, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 721
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 726
    :goto_2
    return-void

    .line 700
    .end local v0           #allowed_user:Ljava/lang/String;
    .end local v1           #blocked_user:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mRequestLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 712
    .restart local v0       #allowed_user:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 724
    .restart local v1       #blocked_user:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement;->mBlistLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private relayoutRequestList(Ljava/lang/String;)V
    .locals 3
    .parameter "mac"

    .prologue
    .line 623
    move-object v0, p1

    .line 625
    .local v0, requestString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 627
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/UserManagement;->parseUnkrownMacAddressOnly(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 632
    :cond_0
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/WifiRouter/UserManagement;->r_size:I

    .line 633
    new-instance v1, Lcom/htc/WifiRouter/UserManagement$3;

    invoke-direct {v1, p0}, Lcom/htc/WifiRouter/UserManagement$3;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/UserManagement;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method private showAllowedUserDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 785
    iput-boolean v4, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z

    .line 786
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/UserManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090052

    new-instance v3, Lcom/htc/WifiRouter/UserManagement$7;

    invoke-direct {v3, p0}, Lcom/htc/WifiRouter/UserManagement$7;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 799
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 800
    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v2, Lcom/htc/WifiRouter/UserManagement$8;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/UserManagement$8;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 810
    return-void
.end method

.method private updateHotspotMacFilter()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApMacList(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    .line 734
    :cond_0
    return-void
.end method

.method private updateHotspotProfile()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/WifiRouter/UserManagement$4;

    invoke-direct {v1, p0}, Lcom/htc/WifiRouter/UserManagement$4;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 748
    :cond_0
    return-void
.end method

.method private updateIPtable(Z)V
    .locals 8
    .parameter "updateDeviceList"

    .prologue
    .line 376
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_3

    .line 378
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getClientInfo(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, iplist:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 382
    const-string v6, "\\|"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, line:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 385
    aget-object v6, v5, v2

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, column:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_1

    .line 387
    if-eqz v4, :cond_0

    .line 388
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 390
    :cond_0
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 383
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    .end local v0           #column:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v5           #line:[Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 397
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getAssocListStr(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, deviceString:Ljava/lang/String;
    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 399
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 400
    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lcom/htc/WifiRouter/WifiRouter;->parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 405
    .end local v1           #deviceString:Ljava/lang/String;
    .end local v3           #iplist:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateWlistView()V
    .locals 8

    .prologue
    const v7, 0x7f0b0001

    .line 252
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    invoke-virtual {v5}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->getCount()I

    move-result v4

    .line 262
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 263
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 264
    .local v2, mView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 265
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement;->mWlistContainer:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, macAddress:Ljava/lang/String;
    sget-object v5, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :goto_1
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v0, v5, -0x2

    .line 273
    .local v0, deviceNamePosition:I
    const/high16 v5, 0x7f0b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .end local v0           #deviceNamePosition:I
    .end local v3           #macAddress:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 277
    .end local v2           #mView:Landroid/view/View;
    .end local v3           #macAddress:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 282
    iput-object p0, p0, Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->requestWindowFeature(I)Z

    .line 284
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 285
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 286
    invoke-virtual {p0}, Lcom/htc/WifiRouter/UserManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/WifiRouter/UserManagement;->listItemHeight:I

    .line 288
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$UiHandler;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$UiHandler;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mUIHandler:Lcom/htc/WifiRouter/UserManagement$UiHandler;

    .line 289
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->initParament()V

    .line 290
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->loadMacAddress()V

    .line 291
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->initLayout()V

    .line 292
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mUIHandler:Lcom/htc/WifiRouter/UserManagement$UiHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/WifiRouter/UserManagement$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const-string v0, "allowed_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z

    .line 297
    iget-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->showAllowedUserDialog()V

    .line 301
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 372
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 360
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->blistAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 361
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 362
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->rlistAdapter:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 363
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/UserManagement;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const v6, 0x1020014

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 315
    invoke-direct {p0}, Lcom/htc/WifiRouter/UserManagement;->reLayout()V

    .line 316
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->rlistAdapter:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 317
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->blistAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 318
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mHotspotStateFilter:Landroid/content/IntentFilter;

    .line 321
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mHotspotStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mHotspotStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement;->mHotspotStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/htc/WifiRouter/UserManagement;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    invoke-direct {p0, v4}, Lcom/htc/WifiRouter/UserManagement;->updateIPtable(Z)V

    .line 325
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    .line 326
    iget-boolean v2, p0, Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z

    if-ne v2, v4, :cond_0

    .line 327
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getRequestedList(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, requestList:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/WifiRouter/UserManagement;->relayoutRequestList(Ljava/lang/String;)V

    .line 330
    .end local v1           #requestList:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    iput v2, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I

    .line 331
    iget v2, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/WifiRouter/UserManagement;->mWifiApState:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowUsersGroup:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 333
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxConnection:Landroid/widget/TextView;

    const v3, -0x555556

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcSpinner;->setEnabled(Z)V

    .line 335
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcSpinner;->setFocusable(Z)V

    .line 336
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    .line 338
    .local v0, T1:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 355
    .end local v0           #T1:Landroid/widget/TextView;
    :cond_2
    :goto_0
    return-void

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowUsersGroup:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 344
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxConnection:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcSpinner;->setEnabled(Z)V

    .line 346
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcSpinner;->setFocusable(Z)V

    .line 347
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement;->mMaxCount:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    .line 349
    .restart local v0       #T1:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    iget-boolean v0, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "allowed_user"

    iget-boolean v1, p0, Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    :cond_0
    return-void
.end method

.method public parseUnkrownMacAddressOnly(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "source"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p2, target:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 665
    :cond_0
    return-void

    .line 654
    :cond_1
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, items:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 656
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 658
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

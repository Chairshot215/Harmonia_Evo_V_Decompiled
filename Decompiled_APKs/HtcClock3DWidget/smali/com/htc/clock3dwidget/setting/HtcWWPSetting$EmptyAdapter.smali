.class Lcom/htc/clock3dwidget/setting/HtcWWPSetting$EmptyAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcWWPSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/setting/HtcWWPSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;


# direct methods
.method private constructor <init>(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$EmptyAdapter;->this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$EmptyAdapter;-><init>(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcom/android/mms/util/CommonActivityLayout$LayoutController;
.super Ljava/lang/Object;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutController"
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field public mFooter:Landroid/view/ViewGroup;

.field private mFooterComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

.field public mHeaderBar:Landroid/view/ViewGroup;

.field private mHeaderBarComposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

.field public mListView:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mContentView:Landroid/view/View;

    .line 243
    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBarComposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    .line 244
    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooterComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    .line 245
    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    .line 246
    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mListView:Lcom/htc/widget/HtcListView;

    .line 247
    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/CommonActivityLayout$LayoutController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/mms/util/CommonActivityLayout$LayoutController;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;)Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBarComposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/mms/util/CommonActivityLayout$LayoutController;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooterComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    return-object p1
.end method


# virtual methods
.method public getActivityContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getFooterComposer()Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooterComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    return-object v0
.end method

.method public getHeaderBarComposer()Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBarComposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    return-object v0
.end method

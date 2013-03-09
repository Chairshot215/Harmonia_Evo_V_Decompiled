.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
.super Ljava/lang/Object;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tagInfo"
.end annotation


# instance fields
.field index_:I

.field pos_:I

.field final synthetic this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1063
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->pos_:I

    .line 1065
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->index_:I

    .line 1067
    return-void
.end method

.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;I)V
    .locals 1
    .parameter
    .parameter "pos"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput p2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->pos_:I

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->index_:I

    .line 1073
    return-void
.end method

.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;II)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "index"

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput p2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->pos_:I

    .line 1077
    iput p3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->index_:I

    .line 1079
    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1082
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->pos_:I

    .line 1083
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->index_:I

    .line 1084
    return-void
.end method

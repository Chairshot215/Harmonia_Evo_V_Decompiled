.class Lcom/htc/widget/HtcExpandableListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HtcExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/widget/HtcExpandableListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1147
    new-instance v0, Lcom/htc/widget/HtcExpandableListView$SavedState$1;

    invoke-direct {v0}, Lcom/htc/widget/HtcExpandableListView$SavedState$1;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcExpandableListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1138
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    const-class v1, Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1139
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/widget/HtcExpandableListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "superState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p2, expandedGroupMetadataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;>;"
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1129
    iput-object p2, p0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    .line 1130
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1143
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1144
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1145
    return-void
.end method

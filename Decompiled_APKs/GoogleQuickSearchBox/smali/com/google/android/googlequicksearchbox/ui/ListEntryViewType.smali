.class abstract Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
.super Ljava/lang/Object;
.source "ListEntryViewType.java"


# instance fields
.field private final mLayoutId:I

.field private final mViewType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "viewType"
    .parameter "layoutId"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->mViewType:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->mLayoutId:I

    .line 36
    return-void
.end method


# virtual methods
.method public abstract canHandleEntry(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->mLayoutId:I

    return v0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->mViewType:Ljava/lang/String;

    return-object v0
.end method

.method public prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V
    .locals 0
    .parameter "entry"
    .parameter "view"

    .prologue
    .line 43
    return-void
.end method

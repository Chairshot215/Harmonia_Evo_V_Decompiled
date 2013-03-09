.class Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeleteBySelectListAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# static fields
.field public static final VIEW_TYPE_ITEM:I = 0x0

.field public static final VIEW_TYPE_SEPARATOR:I = 0x1


# instance fields
.field public mViewType:I

.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteBySelectListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;->this$0:Lcom/android/mms/ui/DeleteBySelectListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 136
    iget v0, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;->mViewType:I

    if-nez v0, :cond_0

    .line 139
    :cond_0
    return v1
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "listitem"

    .prologue
    const/4 v0, 0x1

    .line 123
    if-nez p1, :cond_1

    .line 132
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 127
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;

    if-eqz v1, :cond_2

    .line 128
    check-cast p1, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;

    .end local p1
    iget v1, p1, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;->mViewType:I

    if-eq v1, v0, :cond_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

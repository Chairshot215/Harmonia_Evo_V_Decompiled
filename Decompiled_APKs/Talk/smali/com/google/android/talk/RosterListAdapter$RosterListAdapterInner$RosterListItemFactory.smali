.class Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;
.super Ljava/lang/Object;
.source "RosterListAdapter.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RosterListItemFactory"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;->this$1:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;Lcom/google/android/talk/RosterListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;-><init>(Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/talk/RosterListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/android/talk/RosterListItem;

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner$RosterListItemFactory;->this$1:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    iget-object v1, v1, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->this$0:Lcom/google/android/talk/RosterListAdapter;

    #getter for: Lcom/google/android/talk/RosterListAdapter;->mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter;->access$1300(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/talk/RosterListItem;-><init>(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;Landroid/content/Context;)V

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

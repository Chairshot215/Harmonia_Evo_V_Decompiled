.class Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/RosterListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;->this$0:Lcom/google/android/talk/RosterListAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter;->access$2502(Lcom/google/android/talk/RosterListAdapter;Z)Z

    .line 785
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;->this$0:Lcom/google/android/talk/RosterListAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/talk/RosterListAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 786
    return-void
.end method

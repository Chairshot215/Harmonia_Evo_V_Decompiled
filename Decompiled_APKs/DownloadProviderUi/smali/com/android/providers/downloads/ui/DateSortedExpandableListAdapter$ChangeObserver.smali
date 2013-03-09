.class Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "DateSortedExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;->this$0:Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter$ChangeObserver;->this$0:Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;->refreshData()V

    .line 66
    return-void
.end method

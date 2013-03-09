.class public Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;
.super Ljava/lang/Object;
.source "DisplayExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewTag"
.end annotation


# instance fields
.field public checkBox:Lcom/htc/widget/HtcListItemCheckBox;

.field public countLine:Lcom/htc/widget/HtcListItem2LineStamp;

.field public textLine:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$ViewTag;->this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

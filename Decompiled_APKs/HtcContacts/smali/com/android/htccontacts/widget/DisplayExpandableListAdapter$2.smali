.class Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;
.super Ljava/lang/Object;
.source "DisplayExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->bindChildView(IIZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

.field final synthetic val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

.field final synthetic val$child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;Lcom/htc/widget/HtcListItemCheckBox;Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;->this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iput-object p3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;->val$child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;->this$0:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;->val$checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$2;->val$child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;->onExpandChildClick(Landroid/widget/CheckBox;Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;)Z

    .line 474
    return-void
.end method

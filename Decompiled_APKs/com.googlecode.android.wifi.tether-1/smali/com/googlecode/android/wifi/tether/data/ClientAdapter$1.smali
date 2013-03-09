.class Lcom/googlecode/android/wifi/tether/data/ClientAdapter$1;
.super Ljava/lang/Object;
.source "ClientAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/data/ClientAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter$1;->this$0:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    iput p2, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter$1;->val$position:I

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "compoundButton"
    .parameter "isChecked"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter$1;->this$0:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    iget v1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter$1;->val$position:I

    invoke-virtual {v0, v1, p2}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->toggleChecked(IZ)V

    .line 108
    return-void
.end method

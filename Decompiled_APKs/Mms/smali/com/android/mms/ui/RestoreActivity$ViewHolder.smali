.class Lcom/android/mms/ui/RestoreActivity$ViewHolder;
.super Ljava/lang/Object;
.source "RestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field final check:Landroid/widget/CheckBox;

.field final name:Landroid/widget/TextView;

.field final size:Landroid/widget/TextView;

.field final timestamp:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "name"
    .parameter "timestamp"
    .parameter "size"
    .parameter "check"

    .prologue
    .line 846
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 848
    iput-object p2, p0, Lcom/android/mms/ui/RestoreActivity$ViewHolder;->timestamp:Landroid/widget/TextView;

    .line 849
    iput-object p3, p0, Lcom/android/mms/ui/RestoreActivity$ViewHolder;->size:Landroid/widget/TextView;

    .line 850
    iput-object p4, p0, Lcom/android/mms/ui/RestoreActivity$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 851
    return-void
.end method

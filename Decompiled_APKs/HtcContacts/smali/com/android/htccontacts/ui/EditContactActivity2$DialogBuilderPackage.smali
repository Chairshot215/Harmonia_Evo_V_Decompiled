.class Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogBuilderPackage"
.end annotation


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field clickListener:Landroid/content/DialogInterface$OnClickListener;

.field titleResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4050
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4050
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;-><init>()V

    return-void
.end method

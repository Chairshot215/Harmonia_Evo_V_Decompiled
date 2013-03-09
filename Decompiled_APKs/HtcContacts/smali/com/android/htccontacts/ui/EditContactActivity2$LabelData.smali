.class Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelData"
.end annotation


# instance fields
.field public kind:Lcom/android/htccontacts/model/DataKind;

.field public label:Ljava/lang/String;

.field public type:Lcom/android/htccontacts/model/AccountType$EditType;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;Ljava/lang/String;)V
    .locals 0
    .parameter "k"
    .parameter "t"
    .parameter "l"

    .prologue
    .line 5970
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5971
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->kind:Lcom/android/htccontacts/model/DataKind;

    .line 5972
    iput-object p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->type:Lcom/android/htccontacts/model/AccountType$EditType;

    .line 5973
    iput-object p3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->label:Ljava/lang/String;

    .line 5974
    return-void
.end method

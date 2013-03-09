.class final Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;
.super Lcom/android/htccontacts/widget/BaseContactListItemCache;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListItemTagData"
.end annotation


# instance fields
.field public dataType:I

.field public groupingKey:Ljava/lang/CharSequence;

.field public itemType:I

.field public listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    .line 3363
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/BaseContactListItemCache;-><init>(ZZ)V

    .line 3376
    sget v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->LIST_ITEM_TYPE_ADDRESS:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ListItemTagData;->itemType:I

    .line 3365
    return-void
.end method

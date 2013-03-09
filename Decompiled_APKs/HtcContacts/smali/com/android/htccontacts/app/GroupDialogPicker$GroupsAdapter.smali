.class public Lcom/android/htccontacts/app/GroupDialogPicker$GroupsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/GroupDialogPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GroupsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/GroupDialogPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/GroupDialogPicker;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, itemArray:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;>;"
    iput-object p1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupsAdapter;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    .line 281
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x1090005

    const v2, 0x1020014

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 285
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/GroupDialogPicker$GroupsAdapter;->getItem(I)Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 294
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/htccontacts/ContactCommonSearchPicker$ContactsGroupItemPickerAdapter;
.super Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;
.source "ContactCommonSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactCommonSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactsGroupItemPickerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactCommonSearchPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactCommonSearchPicker;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker$ContactsGroupItemPickerAdapter;->this$0:Lcom/android/htccontacts/ContactCommonSearchPicker;

    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;-><init>(Lcom/android/htccontacts/ContactListSearchPicker;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 306
    return-void
.end method


# virtual methods
.method protected bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 319
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 312
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/ContactListSearchPicker$ContactsItemPickerAdapter;->bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    .line 313
    return-void
.end method

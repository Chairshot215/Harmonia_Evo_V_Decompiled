.class public Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$BlackQueryHandler;
.super Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;
.source "HtcGroupBlackListPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BlackQueryHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;-><init>(Landroid/content/Context;)V

    .line 495
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 499
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactListSearchPicker$HTCQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 545
    return-void
.end method

.class Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;
.super Landroid/database/ContentObserver;
.source "ContactListSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadCursorChangeObserver"
.end annotation


# instance fields
.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    .line 4564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4565
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;->mResolver:Landroid/content/ContentResolver;

    .line 4566
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 4572
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4573
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4575
    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3902(Z)Z

    .line 4584
    :cond_0
    :goto_0
    return-void

    .line 4580
    :cond_1
    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3902(Z)Z

    .line 4581
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorChangeObserver;->mResolver:Landroid/content/ContentResolver;

    #calls: Lcom/android/htccontacts/ContactListSearchPicker;->tryRequeryPreloadPeopleSearchCursor(Landroid/content/ContentResolver;)V
    invoke-static {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->access$4000(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

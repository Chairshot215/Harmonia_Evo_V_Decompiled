.class public Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actioneditor/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsAdapter"
.end annotation


# instance fields
.field private mAddressType:I

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "addressType"

    .prologue
    .line 233
    const v0, 0x7f040004

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 234
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 236
    iput p2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mAddressType:I

    .line 237
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 264
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 265
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    #calls: Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;
    invoke-static {v3, p3}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactRepresentation(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 267
    .local v0, string:Landroid/text/SpannableString;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    #calls: Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;
    invoke-static {v2, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactRepresentation(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 259
    .local v0, s:Landroid/text/SpannableString;
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContactAtIndex(I)Lcom/google/android/voicesearch/actions/Contact;
    .locals 2
    .parameter "which"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 252
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContext:Landroid/content/Context;

    #calls: Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;
    invoke-static {v1, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    return-object v1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x4

    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 272
    if-nez p1, :cond_1

    const-string v7, ""

    .line 273
    .local v7, filter:Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mAddressType:I

    #calls: Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getFilterUri(I)Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->access$100(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 274
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_primary DESC, times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 277
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 280
    :cond_0
    return-object v6

    .line 272
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #filter:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

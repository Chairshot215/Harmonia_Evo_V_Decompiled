.class public Lcom/google/android/voicesearch/actioneditor/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
    }
.end annotation


# static fields
.field protected static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getFilterUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactAlternates(Landroid/content/Context;Ljava/lang/String;I)[Lcom/google/android/voicesearch/actions/Contact;
    .locals 12
    .parameter "context"
    .parameter "constraint"
    .parameter "addressType"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-nez p1, :cond_1

    const-string v10, ""

    .line 80
    .local v10, filter:Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getFilterUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    .local v1, uri:Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v7, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    sget-object v2, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_primary DESC, times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 85
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 87
    .local v8, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v8, :cond_2

    .line 88
    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 89
    invoke-static {p0, v9}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v6

    .line 90
    .local v6, contact:Lcom/google/android/voicesearch/actions/Contact;
    invoke-virtual {v6}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 79
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #contact:Lcom/google/android/voicesearch/actions/Contact;
    .end local v7           #contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    .end local v8           #count:I
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #filter:Ljava/lang/String;
    .end local v11           #i:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 95
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    .restart local v8       #count:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #filter:Ljava/lang/String;
    .restart local v11       #i:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/voicesearch/actions/Contact;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/voicesearch/actions/Contact;

    return-object v2

    .line 95
    .end local v8           #count:I
    .end local v11           #i:I
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 6
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 165
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, name:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, address:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 168
    .local v3, type:I
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, typeString:Ljava/lang/String;
    new-instance v5, Lcom/google/android/voicesearch/actions/Contact;

    invoke-direct {v5, v2, v0, v4, v3}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v5
.end method

.method public static getContactRepresentation(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;Z)Landroid/text/SpannableString;
    .locals 10
    .parameter "context"
    .parameter "contact"
    .parameter "includeType"

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, name:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 196
    const-string v3, "%s (%s) %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getTypeString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, plainString:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    .local v2, string:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f0c0007

    invoke-direct {v3, p0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 206
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f0c0008

    invoke-direct {v3, p0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 208
    return-object v2

    .line 199
    .end local v1           #plainString:Ljava/lang/String;
    .end local v2           #string:Landroid/text/SpannableString;
    :cond_0
    const-string v3, "%s %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #plainString:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getContactWithAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 10
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-object v3

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_primary DESC, times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 120
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 121
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_2

    .line 122
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 123
    invoke-static {p0, v8}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAtCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v6

    .line 124
    .local v6, candidate:Lcom/google/android/voicesearch/actions/Contact;
    invoke-virtual {v6}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    goto :goto_0

    .line 121
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 129
    .end local v6           #candidate:Lcom/google/android/voicesearch/actions/Contact;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #count:I
    .end local v9           #i:I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static getFilterUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "addressType"

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static sortForType([Lcom/google/android/voicesearch/actions/Contact;I)V
    .locals 1
    .parameter "contacts"
    .parameter "type"

    .prologue
    .line 140
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 159
    return-void
.end method

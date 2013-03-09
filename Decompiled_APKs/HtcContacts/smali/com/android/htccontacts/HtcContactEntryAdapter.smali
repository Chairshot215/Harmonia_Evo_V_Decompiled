.class public abstract Lcom/android/htccontacts/HtcContactEntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;,
        Lcom/android/htccontacts/HtcContactEntryAdapter$HtcEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field public static final CONTACT_CUSTOM_RINGTONE_COLUMN:I = 0x6

.field public static final CONTACT_ID_COLUMN:I = 0x0

.field public static final CONTACT_NAME_COLUMN:I = 0x1

.field public static final CONTACT_NOTES_COLUMN:I = 0x2

.field public static final CONTACT_PREFERRED_PHONE_COLUMN:I = 0x3

.field public static final CONTACT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTACT_SEND_TO_VOICEMAIL_COLUMN:I = 0x7

.field public static final CONTACT_SERVER_STATUS_COLUMN:I = 0x4

.field public static final CONTACT_STARRED_COLUMN:I = 0x5

.field public static final METHODS_AUX_DATA_COLUMN:I = 0x6

.field public static final METHODS_DATA_COLUMN:I = 0x2

.field public static final METHODS_ID_COLUMN:I = 0x0

.field public static final METHODS_ISPRIMARY_COLUMN:I = 0x5

.field public static final METHODS_KIND_COLUMN:I = 0x1

.field public static final METHODS_LABEL_COLUMN:I = 0x4

.field public static final METHODS_PROJECTION:[Ljava/lang/String; = null

.field public static final METHODS_STATUS_COLUMN:I = 0x7

.field public static final METHODS_TYPE_COLUMN:I = 0x3

.field public static final METHODS_WITH_PRESENCE_PROJECTION:[Ljava/lang/String; = null

.field public static final ORGANIZATIONS_COMPANY_COLUMN:I = 0x3

.field public static final ORGANIZATIONS_ID_COLUMN:I = 0x0

.field public static final ORGANIZATIONS_ISPRIMARY_COLUMN:I = 0x5

.field public static final ORGANIZATIONS_LABEL_COLUMN:I = 0x2

.field public static final ORGANIZATIONS_PROJECTION:[Ljava/lang/String; = null

.field public static final ORGANIZATIONS_TITLE_COLUMN:I = 0x4

.field public static final ORGANIZATIONS_TYPE_COLUMN:I = 0x1

.field public static final PHONES_ID_COLUMN:I = 0x0

.field public static final PHONES_ISPRIMARY_COLUMN:I = 0x4

.field public static final PHONES_LABEL_COLUMN:I = 0x3

.field public static final PHONES_NUMBER_COLUMN:I = 0x1

.field public static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field public static final PHONES_TYPE_COLUMN:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field protected mSeparators:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "primary_phone"

    aput-object v1, v0, v6

    const-string v1, "mode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "firstName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lastName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcContactEntryAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/htccontacts/HtcContactEntryAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "kind"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "label"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcContactEntryAdapter;->METHODS_PROJECTION:[Ljava/lang/String;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "kind"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "label"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcContactEntryAdapter;->METHODS_WITH_PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v5

    const-string v1, "company"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcContactEntryAdapter;->ORGANIZATIONS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mContext:Landroid/content/Context;

    .line 162
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 163
    iput-object p2, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 164
    iput-boolean p3, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    .line 165
    return-void
.end method

.method public static countEntries(Ljava/util/ArrayList;Z)I
    .locals 6
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)I"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    const/4 v0, 0x0

    .line 288
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 289
    .local v2, numSections:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 290
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 291
    .local v3, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 292
    .local v4, sectionSize:I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 289
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 298
    .end local v3           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v4           #sectionSize:I
    :cond_1
    return v0
.end method

.method public static final getEntry(Ljava/util/ArrayList;IZ)Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;
    .locals 5
    .parameter
    .parameter "position"
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;IZ)TT;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 264
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 265
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 266
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 267
    .local v3, sectionSize:I
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 264
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 272
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;

    .line 276
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :goto_2
    return-object v4

    .line 274
    .restart local v2       #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v3       #sectionSize:I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_1

    .line 276
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 218
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract bindView(Landroid/view/View;Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;)V"
        }
    .end annotation
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 210
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcContactEntryAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 251
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    invoke-static {v0, p1, v1}, Lcom/android/htccontacts/HtcContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 305
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    invoke-static {v1, p1, v2}, Lcom/android/htccontacts/HtcContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;

    move-result-object v0

    .line 306
    .local v0, entry:Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;
    if-eqz v0, :cond_0

    .line 307
    iget-wide v1, v0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->id:J

    .line 309
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 318
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 319
    invoke-virtual {p0, p1, p3}, Lcom/android/htccontacts/HtcContactEntryAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    invoke-static {v1, p1, v2}, Lcom/android/htccontacts/HtcContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/HtcContactEntryAdapter;->bindView(Landroid/view/View;Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;)V

    .line 324
    return-object v0

    .line 321
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    const/4 v4, 0x1

    .line 226
    iget-boolean v5, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    if-nez v5, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v4

    .line 230
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 231
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 232
    iget-object v5, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 233
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 234
    .local v3, sectionSize:I
    if-ne v3, v4, :cond_2

    .line 231
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_2
    if-nez p1, :cond_3

    .line 240
    const/4 v4, 0x0

    goto :goto_0

    .line 242
    :cond_3
    sub-int/2addr p1, v3

    goto :goto_2
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final setSections(Ljava/util/ArrayList;Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;)I
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;TE;)I"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    .local p2, entry:Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;,"TE;"
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactEntryAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v7, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 190
    .local v3, numSections:I
    const/4 v4, 0x0

    .line 191
    .local v4, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 192
    iget-object v7, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 193
    .local v5, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 194
    .local v6, sectionSize:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 195
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;

    .line 196
    .local v0, e:Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;,"TE;"
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    add-int/2addr v4, v2

    move v7, v4

    .line 203
    .end local v0           #e:Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;,"TE;"
    .end local v2           #j:I
    .end local v5           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v6           #sectionSize:I
    :goto_2
    return v7

    .line 194
    .restart local v0       #e:Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;,"TE;"
    .restart local v2       #j:I
    .restart local v5       #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .restart local v6       #sectionSize:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    .end local v0           #e:Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;,"TE;"
    :cond_1
    add-int/2addr v4, v6

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v2           #j:I
    .end local v5           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v6           #sectionSize:I
    :cond_2
    const/4 v7, -0x1

    goto :goto_2
.end method

.method public final setSections(Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/android/htccontacts/HtcContactEntryAdapter;,"Lcom/android/htccontacts/HtcContactEntryAdapter<TE;>;"
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 174
    iput-boolean p2, p0, Lcom/android/htccontacts/HtcContactEntryAdapter;->mSeparators:Z

    .line 175
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactEntryAdapter;->notifyDataSetChanged()V

    .line 176
    return-void
.end method

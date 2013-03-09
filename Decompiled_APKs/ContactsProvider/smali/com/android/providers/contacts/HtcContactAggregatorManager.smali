.class public Lcom/android/providers/contacts/HtcContactAggregatorManager;
.super Ljava/lang/Object;
.source "HtcContactAggregatorManager.java"


# static fields
.field private static mContactAggregatorInstance:Lcom/android/providers/contacts/ContactAggregator;

.field private static mProfileAggregatorInstance:Lcom/android/providers/contacts/ProfileAggregator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mContactAggregatorInstance:Lcom/android/providers/contacts/ContactAggregator;

    .line 26
    sput-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mProfileAggregatorInstance:Lcom/android/providers/contacts/ProfileAggregator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactAggregator(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)Lcom/android/providers/contacts/ContactAggregator;
    .locals 6
    .parameter "contactsProvider"
    .parameter "openHelper"
    .parameter "photoPriorityResolver"
    .parameter "nameSplitter"
    .parameter "commonNicknameCache"

    .prologue
    .line 40
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    sput-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mContactAggregatorInstance:Lcom/android/providers/contacts/ContactAggregator;

    .line 46
    sget-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mContactAggregatorInstance:Lcom/android/providers/contacts/ContactAggregator;

    return-object v0
.end method

.method public static getContactAggregatorInstance()Lcom/android/providers/contacts/ContactAggregator;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mContactAggregatorInstance:Lcom/android/providers/contacts/ContactAggregator;

    return-object v0
.end method

.method public static getProfileAggregator(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)Lcom/android/providers/contacts/ContactAggregator;
    .locals 6
    .parameter "contactsProvider"
    .parameter "openHelper"
    .parameter "photoPriorityResolver"
    .parameter "nameSplitter"
    .parameter "commonNicknameCache"

    .prologue
    .line 59
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/ProfileAggregator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ProfileAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    sput-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mProfileAggregatorInstance:Lcom/android/providers/contacts/ProfileAggregator;

    .line 65
    sget-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mProfileAggregatorInstance:Lcom/android/providers/contacts/ProfileAggregator;

    return-object v0
.end method

.method public static getProfileAggregatorInstance()Lcom/android/providers/contacts/ContactAggregator;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/providers/contacts/HtcContactAggregatorManager;->mProfileAggregatorInstance:Lcom/android/providers/contacts/ProfileAggregator;

    return-object v0
.end method

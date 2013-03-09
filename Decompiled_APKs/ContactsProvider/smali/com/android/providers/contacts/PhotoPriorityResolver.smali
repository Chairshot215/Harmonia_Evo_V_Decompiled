.class public Lcom/android/providers/contacts/PhotoPriorityResolver;
.super Ljava/lang/Object;
.source "PhotoPriorityResolver.java"


# static fields
.field public static final DEFAULT_PRIORITY:I = 0x7

.field private static final METADATA_CONTACTS:Ljava/lang/String; = "android.provider.CONTACTS_STRUCTURE"

.field private static final PICTURE_TAG:Ljava/lang/String; = "Picture"

.field private static final PRIORITY_ATTR:Ljava/lang/String; = "priority"

.field private static final TAG:Ljava/lang/String; = "PhotoPriorityResolver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhotoPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mPhotoPriorities:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private loadPhotoPriorityFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 12
    .parameter "context"
    .parameter "parser"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 128
    const/4 v6, 0x7

    .line 132
    .local v6, priority:I
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    if-eq v7, v10, :cond_1

    if-ne v7, v11, :cond_0

    .line 136
    :cond_1
    if-eq v7, v10, :cond_2

    .line 137
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "No start tag found"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v7           #type:I
    :catch_0
    move-exception v3

    .line 158
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Problem reading XML"

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 140
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #type:I
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 142
    .local v2, depth:I
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_6

    :cond_4
    if-eq v7, v11, :cond_6

    .line 143
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, name:Ljava/lang/String;
    if-ne v7, v10, :cond_3

    const-string v8, "Picture"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 145
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 146
    .local v1, attributeCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 147
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, attr:Ljava/lang/String;
    const-string v8, "priority"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 149
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_5
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported attribute "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .end local v0           #attr:Ljava/lang/String;
    .end local v1           #attributeCount:I
    .end local v2           #depth:I
    .end local v4           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #type:I
    :catch_1
    move-exception v3

    .line 160
    .local v3, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Problem reading XML"

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 163
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #depth:I
    .restart local v7       #type:I
    :cond_6
    return v6
.end method

.method private resolvePhotoPriority(Ljava/lang/String;)I
    .locals 6
    .parameter "accountType"

    .prologue
    .line 93
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 95
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .local v1, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 96
    .local v2, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/PhotoPriorityResolver;->resolvePhotoPriorityFromMetaData(Ljava/lang/String;)I

    move-result v5

    .line 101
    .end local v2           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return v5

    .line 95
    .restart local v2       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v2           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v5, 0x7

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getPhotoPriority(Ljava/lang/String;)I
    .locals 2
    .parameter "accountType"

    .prologue
    .line 77
    monitor-enter p0

    if-nez p1, :cond_0

    .line 78
    const/4 v1, 0x7

    .line 86
    :goto_0
    monitor-exit p0

    return v1

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mPhotoPriorities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    .local v0, priority:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PhotoPriorityResolver;->resolvePhotoPriority(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mPhotoPriorities:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 77
    .end local v0           #priority:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method resolvePhotoPriorityFromMetaData(Ljava/lang/String;)I
    .locals 11
    .parameter "packageName"

    .prologue
    .line 109
    iget-object v8, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 111
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x84

    :try_start_0
    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 113
    .local v5, pi:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_1

    .line 114
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 115
    .local v7, si:Landroid/content/pm/ServiceInfo;
    const-string v8, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 116
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 117
    iget-object v8, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v4}, Lcom/android/providers/contacts/PhotoPriorityResolver;->loadPhotoPriorityFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 124
    .end local v0           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    .end local v5           #pi:Landroid/content/pm/PackageInfo;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :goto_1
    return v8

    .line 114
    .restart local v0       #arr$:[Landroid/content/pm/ServiceInfo;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v5       #pi:Landroid/content/pm/PackageInfo;
    .restart local v7       #si:Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    .end local v5           #pi:Landroid/content/pm/PackageInfo;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "PhotoPriorityResolver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem loading photo priorities: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v8, 0x7

    goto :goto_1
.end method

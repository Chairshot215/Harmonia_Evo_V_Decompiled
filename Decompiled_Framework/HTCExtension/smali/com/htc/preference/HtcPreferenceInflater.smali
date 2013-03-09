.class Lcom/htc/preference/HtcPreferenceInflater;
.super Lcom/htc/preference/HtcGenericInflater;
.source "HtcPreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/preference/HtcGenericInflater",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        "Lcom/htc/preference/HtcPreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcGenericInflater;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreferenceInflater;->init(Lcom/htc/preference/HtcPreferenceManager;)V

    return-void
.end method

.method constructor <init>(Lcom/htc/preference/HtcGenericInflater;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcGenericInflater",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            ">;",
            "Lcom/htc/preference/HtcPreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/htc/preference/HtcGenericInflater;-><init>(Lcom/htc/preference/HtcGenericInflater;Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreferenceInflater;->init(Lcom/htc/preference/HtcPreferenceManager;)V

    return-void
.end method

.method private init(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceInflater;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    const-string v0, "android.preference."

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Lcom/htc/preference/HtcGenericInflater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/htc/preference/HtcGenericInflater",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/htc/preference/HtcPreferenceInflater;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceInflater;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Lcom/htc/preference/HtcPreferenceInflater;-><init>(Lcom/htc/preference/HtcGenericInflater;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/preference/HtcPreference;Landroid/util/AttributeSet;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    const-string v5, "extra"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "extra"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, p3, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :try_start_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Error parsing preference"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    check-cast p2, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Lcom/htc/preference/HtcPreference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onMergeRoots(Lcom/htc/preference/HtcGenericInflater$Parent;ZLcom/htc/preference/HtcGenericInflater$Parent;)Lcom/htc/preference/HtcGenericInflater$Parent;
    .locals 1

    check-cast p1, Lcom/htc/preference/HtcPreferenceGroup;

    check-cast p3, Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceInflater;->onMergeRoots(Lcom/htc/preference/HtcPreferenceGroup;ZLcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lcom/htc/preference/HtcPreferenceGroup;ZLcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreferenceGroup;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceInflater;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {p3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    :goto_0
    return-object p3

    :cond_0
    move-object p3, p1

    goto :goto_0
.end method

.class public Lcom/android/settings/framework/search/HtcSettingsSearchEngine;
.super Ljava/lang/Object;
.source "HtcSettingsSearchEngine.java"


# instance fields
.field protected mAgents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/search/HtcISearchAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/search/HtcSettingsSearchEngine;->mAgents:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/search/HtcSettingsSearchEngine;->register(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected register(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/framework/search/HtcSettingsSearchEngine;->mAgents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSearchAgent;

    invoke-direct {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSearchAgent;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

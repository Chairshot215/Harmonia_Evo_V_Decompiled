.class public Lcom/android/providers/contacts/RefineRigntoneUriReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RefineRigntoneUriReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;,
        Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;
    }
.end annotation


# static fields
.field public static final ACTION_MEDIA_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field public static final ACTION_MEDIA_UPGRADE_READY:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"

.field public static final ACTION_UPDATE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

.field public static final CATEGORY_UPGRADE_MEDIA:Ljava/lang/String; = "com.htc.media.for_contacts"

.field private static final DEBUG:Z = false

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "media_upgrade"

.field private static final PREFS_MEDIA_UPGRADE_READY:Ljava/lang/String; = "MEDIA_UPGRADE_READY"

.field private static final PREFS_NEED_REFINE:Ljava/lang/String; = "PREFS_NEED_REFINE"

.field private static final PREFS_REFINE_FINISH:Ljava/lang/String; = "MEDIA_REFINE_FINISH"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOnResponseListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;

.field private mOnUpdateReadyListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const-string v0, "RefineRigntoneUriReceiver"

    iput-object v0, p0, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->TAG:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static isNeedFine(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 150
    const-string v4, "media_upgrade"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v4, "MEDIA_UPGRADE_READY"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 153
    .local v2, upgrade_request:Z
    const-string v4, "media_upgrade"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    const-string v4, "MEDIA_REFINE_FINISH"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, finish:Z
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 157
    const/4 v3, 0x1

    .line 159
    :cond_0
    return v3
.end method

.method public static isRefineFinish(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 136
    const-string v2, "media_upgrade"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "MEDIA_REFINE_FINISH"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 138
    .local v0, result:Z
    return v0
.end method

.method public static isUpgradeReady(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 130
    const-string v2, "media_upgrade"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "MEDIA_UPGRADE_READY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 132
    .local v0, result:Z
    return v0
.end method

.method public static sendUpdateRequest(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, oldUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "com.android.providers.contacts.RefineRigntoneUriReceiver"

    .line 99
    .local v4, receiverName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, localClassName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 104
    .local v2, packageLen:I
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_1

    .line 107
    :cond_0
    move-object v1, v4

    .line 114
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v5, "media_type"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v5, "media_ids_req"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    const-string v5, "category"

    const-string v6, "com.htc.media.for_contacts"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    return-void

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static writeFinish(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 142
    const-string v2, "media_upgrade"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "MEDIA_REFINE_FINISH"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {p1}, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->isRefineFinish(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    const-string v4, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    const-string v4, "media_upgrade"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 49
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "MEDIA_UPGRADE_READY"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    iget-object v4, p0, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->mOnUpdateReadyListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->mOnUpdateReadyListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;

    invoke-interface {v4}, Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;->onUpdateReady()V

    goto :goto_0

    .line 57
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_2
    const-string v4, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    const-string v4, "media_ids_res"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 64
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->mOnResponseListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->mOnResponseListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;

    invoke-interface {v4, v2}, Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;->onResponse(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setOnResponseListener(Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;)V
    .locals 0
    .parameter "onResponseListener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->mOnResponseListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;

    .line 84
    return-void
.end method

.method public setOnUpdateReadyListener(Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;)V
    .locals 0
    .parameter "onUpdateReadyListener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/providers/contacts/RefineRigntoneUriReceiver;->mOnUpdateReadyListener:Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnUpdateReadyListener;

    .line 88
    return-void
.end method

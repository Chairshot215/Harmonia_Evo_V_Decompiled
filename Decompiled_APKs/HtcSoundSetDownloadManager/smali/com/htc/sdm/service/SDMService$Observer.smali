.class Lcom/htc/sdm/service/SDMService$Observer;
.super Landroid/database/ContentObserver;
.source "SDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/service/SDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/service/SDMService;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/service/SDMService;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/sdm/service/SDMService$Observer;->this$0:Lcom/htc/sdm/service/SDMService;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 200
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    .line 208
    :try_start_0
    iget-object v4, p0, Lcom/htc/sdm/service/SDMService$Observer;->this$0:Lcom/htc/sdm/service/SDMService;

    invoke-virtual {v4}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 212
    .local v2, music:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/sdm/service/SDMService$Observer;->this$0:Lcom/htc/sdm/service/SDMService;

    invoke-virtual {v4}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "SoundSetPref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 213
    .local v3, pref:Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 215
    const-string v4, "PrefSetRingBySDM"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 216
    .local v1, bChangeBySDM:Z
    if-nez v1, :cond_1

    .line 218
    iget-object v4, p0, Lcom/htc/sdm/service/SDMService$Observer;->this$0:Lcom/htc/sdm/service/SDMService;

    invoke-virtual {v4}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v2, v5}, Lcom/htc/sdm/util/SDMDBUtil;->AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, NewSoundGUID:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    iget-object v4, p0, Lcom/htc/sdm/service/SDMService$Observer;->this$0:Lcom/htc/sdm/service/SDMService;

    invoke-virtual {v4}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v0, v5, v6, v2}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 240
    .end local v0           #NewSoundGUID:Ljava/lang/String;
    .end local v1           #bChangeBySDM:Z
    .end local v2           #music:Landroid/net/Uri;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v1       #bChangeBySDM:Z
    .restart local v2       #music:Landroid/net/Uri;
    .restart local v3       #pref:Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefSetRingBySDM"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v1           #bChangeBySDM:Z
    .end local v2           #music:Landroid/net/Uri;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

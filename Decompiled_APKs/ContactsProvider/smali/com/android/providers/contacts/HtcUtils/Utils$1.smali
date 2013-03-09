.class final Lcom/android/providers/contacts/HtcUtils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcUtils/Utils;->removeSimFromSpeedDial(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/Utils$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 103
    const-string v3, "data_id"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 104
    const-string v3, "recordNumber"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x4000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 107
    const-string v3, "recordLocation"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 110
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recordNumber"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, " IS NOT NULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v3, p0, Lcom/android/providers/contacts/HtcUtils/Utils$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #values:Landroid/content/ContentValues;
    .end local v2           #where:Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "removeSimFromSpeedDial"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

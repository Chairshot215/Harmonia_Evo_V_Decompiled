.class Lcom/android/settings/deviceinfo/Memory$1;
.super Landroid/os/Handler;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x6

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 143
    .local v8, bundle:Landroid/os/Bundle;
    const-string v0, "total_size"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 144
    .local v1, totalSize:J
    const-string v0, "avail_size"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 145
    .local v3, availSize:J
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #calls: Lcom/android/settings/deviceinfo/Memory;->updateUiApproximate(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;JJ)V

    goto :goto_0

    .line 149
    .end local v1           #totalSize:J
    .end local v3           #availSize:J
    .end local v8           #bundle:Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 150
    .restart local v8       #bundle:Landroid/os/Bundle;
    const-string v0, "total_size"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 151
    .restart local v1       #totalSize:J
    const-string v0, "avail_size"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 152
    .restart local v3       #availSize:J
    const-string v0, "apps_used"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 153
    .local v5, appsUsed:J
    new-array v7, v12, [J

    .line 154
    .local v7, mediaSizes:[J
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v12, :cond_0

    .line 155
    sget-object v0, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v7, v9

    .line 154
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #calls: Lcom/android/settings/deviceinfo/Memory;->updateUiExact(JJJ[J)V
    invoke-static/range {v0 .. v7}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;JJJ[J)V

    goto :goto_0

    .line 161
    .end local v1           #totalSize:J
    .end local v3           #availSize:J
    .end local v5           #appsUsed:J
    .end local v7           #mediaSizes:[J
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #i:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 162
    .restart local v8       #bundle:Landroid/os/Bundle;
    const-string v0, "total_size"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 163
    .restart local v1       #totalSize:J
    const-string v0, "avail_size"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 166
    .restart local v3       #availSize:J
    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

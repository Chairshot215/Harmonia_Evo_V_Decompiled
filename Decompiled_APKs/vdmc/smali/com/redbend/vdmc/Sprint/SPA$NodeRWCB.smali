.class public Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;
.super Ljava/lang/Object;
.source "SPA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/SPA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeRWCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/SPA;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/SPA;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public read(I[BLjava/lang/String;)I
    .locals 8
    .parameter "offset"
    .parameter "data"
    .parameter "node"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 128
    const-string v2, "default"

    .line 129
    .local v2, szData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 130
    .local v1, ret:I
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v4

    #setter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3, v4}, Lcom/redbend/vdmc/Sprint/SPA;->access$002(Lcom/redbend/vdmc/Sprint/SPA;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 132
    const-string v3, "./SPA/BarDomVoiceRoaming/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 133
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    :cond_0
    const-string v3, "./SPA/BarDomVoiceRoaming/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 136
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    :cond_1
    const-string v3, "./SPA/IntlDataGuard/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 139
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_2
    const-string v3, "./SPA/IntlDataGuard/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 142
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_3
    const-string v3, "./SPA/IntlDataRoaming/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 145
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    :cond_4
    const-string v3, "./SPA/IntlDataRoaming/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 148
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_5
    const-string v3, "./SPA/IntlDialing/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_6

    .line 151
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlDialingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_6
    const-string v3, "./SPA/IntlDialing/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 154
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlDialingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_7
    const-string v3, "./SPA/IntlVoiceGuard/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_8

    .line 157
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    :cond_8
    const-string v3, "./SPA/IntlVoiceGuard/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_9

    .line 160
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_9
    const-string v3, "./SPA/IntlVoiceRoaming/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_a

    .line 163
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    :cond_a
    const-string v3, "./SPA/IntlVoiceRoaming/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_b

    .line 166
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_b
    const-string v3, "./SPA/DomDataGuard/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_c

    .line 169
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_c
    const-string v3, "./SPA/DomDataGuard/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_d

    .line 172
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    :cond_d
    const-string v3, "./SPA/DomDataRoaming/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_e

    .line 175
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    :cond_e
    const-string v3, "./SPA/DomDataRoaming/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_f

    .line 178
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_f
    const-string v3, "./SPA/DomVoiceGuard/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_10

    .line 181
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    :cond_10
    const-string v3, "./SPA/DomVoiceGuard/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_11

    .line 184
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    :cond_11
    const-string v3, "./SPA/DomVoiceRoaming/Enabled"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_12

    .line 187
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_12
    const-string v3, "./SPA/DomVoiceRoaming/Forced"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_13

    .line 190
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/htc/ipl/common;->DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_13
    const-string v3, "SPA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "node:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " szData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 194
    if-eqz p2, :cond_14

    .line 195
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v6}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 196
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_14
    return v1
.end method

.method public write(I[BILjava/lang/String;)V
    .locals 4
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .parameter "node"

    .prologue
    const/4 v3, 0x1

    .line 203
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 204
    .local v0, szData:Ljava/lang/String;
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v2

    #setter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1, v2}, Lcom/redbend/vdmc/Sprint/SPA;->access$002(Lcom/redbend/vdmc/Sprint/SPA;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 205
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 206
    const-string v1, "./SPA/BarDomVoiceRoaming/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 207
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 209
    :cond_0
    const-string v1, "./SPA/BarDomVoiceRoaming/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 210
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 212
    :cond_1
    const-string v1, "./SPA/IntlDataGuard/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 213
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 215
    :cond_2
    const-string v1, "./SPA/IntlDataGuard/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 216
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 218
    :cond_3
    const-string v1, "./SPA/IntlDataRoaming/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 219
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 221
    :cond_4
    const-string v1, "./SPA/IntlDataRoaming/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 222
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 224
    :cond_5
    const-string v1, "./SPA/IntlDialing/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 225
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlDialingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 227
    :cond_6
    const-string v1, "./SPA/IntlDialing/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_7

    .line 228
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlDialingForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 230
    :cond_7
    const-string v1, "./SPA/IntlVoiceGuard/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_8

    .line 231
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 233
    :cond_8
    const-string v1, "./SPA/IntlVoiceGuard/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_9

    .line 234
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 236
    :cond_9
    const-string v1, "./SPA/IntlVoiceRoaming/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_a

    .line 237
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 239
    :cond_a
    const-string v1, "./SPA/IntlVoiceRoaming/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_b

    .line 240
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 242
    :cond_b
    const-string v1, "./SPA/DomDataGuard/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_c

    .line 243
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 245
    :cond_c
    const-string v1, "./SPA/DomDataGuard/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_d

    .line 246
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 248
    :cond_d
    const-string v1, "./SPA/DomDataRoaming/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_e

    .line 249
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 251
    :cond_e
    const-string v1, "./SPA/DomDataRoaming/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_f

    .line 252
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 254
    :cond_f
    const-string v1, "./SPA/DomVoiceGuard/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_10

    .line 255
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 257
    :cond_10
    const-string v1, "./SPA/DomVoiceGuard/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_11

    .line 258
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 260
    :cond_11
    const-string v1, "./SPA/DomVoiceRoaming/Enabled"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_12

    .line 261
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    .line 263
    :cond_12
    const-string v1, "./SPA/DomVoiceRoaming/Forced"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_13

    .line 264
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/SPA;

    #getter for: Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/SPA;->access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/ipl/common;->DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    .line 266
    :cond_13
    const-string v1, "SPA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " szData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

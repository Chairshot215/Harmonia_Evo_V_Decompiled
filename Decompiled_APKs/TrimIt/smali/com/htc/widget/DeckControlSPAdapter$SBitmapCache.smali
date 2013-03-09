.class public Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
.super Ljava/lang/Object;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControlSPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SBitmapCache"
.end annotation


# instance fields
.field private capacity:I

.field private sbitmaparray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny/SBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/htc/widget/DeckControlSPAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DeckControlSPAdapter;I)V
    .locals 2
    .parameter
    .parameter "icapacity"

    .prologue
    .line 907
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    if-lez p2, :cond_0

    .line 910
    iput p2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    .line 911
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 912
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    .line 914
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Integer;IZ)V
    .locals 8
    .parameter "addposition"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 947
    const/4 v3, -0x1

    .line 948
    .local v3, tmpdistance:I
    const/4 v1, -0x1

    .line 950
    .local v1, maxdistance:I
    const/4 v4, -0x1

    .line 951
    .local v4, tmpposition:I
    const/4 v2, -0x1

    .line 953
    .local v2, maxposition:I
    const/4 v5, 0x0

    .line 955
    .local v5, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 956
    sub-int v6, v2, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 958
    const/4 v0, 0x1

    .local v0, loop:I
    :goto_0
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 960
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 961
    sub-int v6, v4, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 963
    if-ge v1, v3, :cond_0

    .line 965
    move v2, v4

    .line 966
    move v1, v3

    .line 958
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    :cond_1
    if-eqz p3, :cond_3

    .line 972
    const/4 v5, 0x0

    .line 973
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v5, Lcom/htc/sunny/SBitmap;

    .line 974
    .restart local v5       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 976
    if-eqz v5, :cond_2

    .line 977
    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 995
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 996
    return-void

    .line 981
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 982
    sub-int v6, v4, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 984
    if-ge v3, v1, :cond_2

    .line 986
    const/4 v5, 0x0

    .line 987
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v5, Lcom/htc/sunny/SBitmap;

    .line 988
    .restart local v5       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 990
    if-eqz v5, :cond_2

    .line 991
    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 1126
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1133
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1134
    const/4 v0, 0x0

    .local v0, loop:I
    const/4 v1, 0x0

    .local v1, position:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1136
    const/4 v2, 0x0

    .line 1138
    .local v2, sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1139
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v2, Lcom/htc/sunny/SBitmap;

    .line 1140
    .restart local v2       #sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1142
    if-eqz v2, :cond_2

    .line 1143
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 1134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1146
    .end local v0           #loop:I
    .end local v1           #position:I
    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1147
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1154
    const/4 v2, 0x0

    .line 1155
    .restart local v2       #sbitmap:Lcom/htc/sunny/SBitmap;
    goto :goto_0

    .line 1151
    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public clear(I)V
    .locals 5
    .parameter "startindex"

    .prologue
    .line 1161
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1171
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1172
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1173
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, position:I
    if-lt v1, p1, :cond_2

    .line 1175
    const/4 v2, 0x0

    .line 1176
    .local v2, sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v2, Lcom/htc/sunny/SBitmap;

    .line 1177
    .restart local v2       #sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1179
    if-eqz v2, :cond_2

    .line 1180
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1185
    .end local v0           #loop:I
    .end local v1           #position:I
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1191
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->clear()V

    .line 1193
    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1194
    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    .line 1195
    return-void
.end method

.method public pull(Ljava/lang/Integer;)Lcom/htc/sunny/SBitmap;
    .locals 3
    .parameter "position"

    .prologue
    .line 1071
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 1072
    :cond_0
    const/4 v0, 0x0

    .line 1086
    :goto_0
    return-object v0

    .line 1076
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v0, Lcom/htc/sunny/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    .restart local v0       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pullAsync(Ljava/lang/Integer;JLjava/util/concurrent/TimeUnit;)Lcom/htc/sunny/SBitmap;
    .locals 7
    .parameter "position"
    .parameter "timeout"
    .parameter "timeunit"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1094
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return-object v2

    .line 1097
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 1100
    const/4 v2, 0x0

    .line 1101
    .local v2, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    const/4 v3, 0x0

    .line 1105
    .local v3, trylockflg:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1106
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny/SBitmap;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_2
    if-ne v3, v6, :cond_0

    .line 1116
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v1

    .line 1110
    .local v1, exception:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v4, "SPresentationAdapter"

    const-string v5, "SBitmapCache:pullAsync"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    if-ne v3, v6, :cond_0

    .line 1116
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1115
    .end local v1           #exception:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    if-ne v3, v6, :cond_3

    .line 1116
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v4
.end method

.method public push(Ljava/lang/Integer;Lcom/htc/sunny/SBitmap;IZ)Z
    .locals 4
    .parameter "position"
    .parameter "sbitmap"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 1028
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 1029
    :cond_0
    const/4 v0, 0x0

    .line 1064
    :goto_0
    return v0

    .line 1033
    :cond_1
    const/4 v0, 0x1

    .line 1035
    .local v0, pushflag:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1036
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 1040
    const/4 v1, 0x0

    .line 1041
    .local v1, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v1, Lcom/htc/sunny/SBitmap;

    .line 1042
    .restart local v1       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1044
    if-eqz v1, :cond_2

    .line 1045
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 1048
    .end local v1           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge v2, v3, :cond_3

    .line 1049
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1052
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p3, p4}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->remove(Ljava/lang/Integer;IZ)V

    .line 1053
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge v2, v3, :cond_4

    .line 1054
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1061
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1056
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Integer;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1002
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1009
    const/4 v0, 0x0

    .line 1010
    .local v0, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v0, Lcom/htc/sunny/SBitmap;

    .line 1011
    .restart local v0       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1013
    if-eqz v0, :cond_2

    .line 1014
    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1021
    const/4 v0, 0x0

    .line 1022
    goto :goto_0

    .line 1018
    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setCapacity(I)V
    .locals 4
    .parameter "icapacity"

    .prologue
    const/4 v2, 0x1

    .line 918
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-eq p1, v1, :cond_0

    if-ge p1, v2, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 924
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge p1, v1, :cond_4

    .line 926
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 928
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 929
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->center:I
    invoke-static {v2}, Lcom/htc/widget/DeckControlSPAdapter;->access$400(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->remove(Ljava/lang/Integer;IZ)V

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 930
    :cond_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    .end local v0           #loop:I
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 933
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 940
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 936
    :cond_4
    :try_start_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

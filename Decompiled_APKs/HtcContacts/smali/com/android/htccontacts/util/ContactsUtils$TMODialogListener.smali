.class Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TMODialogListener"
.end annotation


# instance fields
.field private mImDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4188
    .local p2, imDataArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4189
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 4190
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;->mImDataArray:Ljava/util/ArrayList;

    .line 4191
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4194
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4195
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 4211
    :cond_0
    :goto_0
    return-void

    .line 4198
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;->mImDataArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/util/ImData;

    .line 4199
    .local v2, imData:Lcom/android/htccontacts/util/ImData;
    const/4 v3, 0x0

    .line 4200
    .local v3, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 4201
    invoke-virtual {v2}, Lcom/android/htccontacts/util/ImData;->getIntentYahooVideoCall()Landroid/content/Intent;

    move-result-object v3

    .line 4205
    :goto_1
    if-eqz v3, :cond_0

    .line 4207
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4208
    :catch_0
    move-exception v1

    .line 4209
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ContactsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TMODialogListener No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4203
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-virtual {v2}, Lcom/android/htccontacts/util/ImData;->getIntentIm()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1
.end method

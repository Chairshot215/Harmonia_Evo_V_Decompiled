.class Lcom/htc/android/locationpicker/PickerUtils$1;
.super Ljava/lang/Object;
.source "PickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/PickerUtils;->searchFromGgeocoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/PickerUtils;

.field final synthetic val$previousThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/PickerUtils;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    iput-object p2, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->val$previousThread:Ljava/lang/Thread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->val$previousThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #setter for: Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/PickerUtils;->access$002(Lcom/htc/android/locationpicker/PickerUtils;Z)Z

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->val$previousThread:Ljava/lang/Thread;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #setter for: Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z
    invoke-static {v0, v3}, Lcom/htc/android/locationpicker/PickerUtils;->access$002(Lcom/htc/android/locationpicker/PickerUtils;Z)Z

    .line 132
    :cond_0
    const/4 v8, 0x3

    .line 133
    .local v8, MAX_TRY:I
    const/4 v11, 0x0

    .line 135
    .local v11, result:Z
    const/4 v9, 0x0

    .local v9, count:I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 136
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$000(Lcom/htc/android/locationpicker/PickerUtils;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #setter for: Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z
    invoke-static {v0, v3}, Lcom/htc/android/locationpicker/PickerUtils;->access$002(Lcom/htc/android/locationpicker/PickerUtils;Z)Z

    .line 145
    :cond_1
    if-eqz v11, :cond_4

    .line 146
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$200(Lcom/htc/android/locationpicker/PickerUtils;)Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$200(Lcom/htc/android/locationpicker/PickerUtils;)Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/locationpicker/PickerUtils;->access$300(Lcom/htc/android/locationpicker/PickerUtils;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mAddressLine:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/locationpicker/PickerUtils;->access$400(Lcom/htc/android/locationpicker/PickerUtils;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mAddress:Landroid/location/Address;
    invoke-static {v4}, Lcom/htc/android/locationpicker/PickerUtils;->access$500(Lcom/htc/android/locationpicker/PickerUtils;)Landroid/location/Address;

    move-result-object v4

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/htc/android/locationpicker/PickerUtils$SearchListener;->onResult(ZLjava/lang/String;Ljava/lang/String;Landroid/location/Address;Z)V

    .line 149
    :cond_2
    const-string v0, "PickerUtils"

    const-string v1, "Geocoder succeed !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_2
    return-void

    .line 126
    .end local v8           #MAX_TRY:I
    .end local v9           #count:I
    .end local v11           #result:Z
    :catch_0
    move-exception v10

    .line 127
    .local v10, e:Ljava/lang/InterruptedException;
    const-string v0, "PickerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in searchFromGgeocoder"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v8       #MAX_TRY:I
    .restart local v9       #count:I
    .restart local v11       #result:Z
    :cond_3
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #calls: Lcom/htc/android/locationpicker/PickerUtils;->startGeocoding()Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$100(Lcom/htc/android/locationpicker/PickerUtils;)Z

    move-result v11

    .line 142
    if-nez v11, :cond_1

    .line 135
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$200(Lcom/htc/android/locationpicker/PickerUtils;)Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$200(Lcom/htc/android/locationpicker/PickerUtils;)Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$300(Lcom/htc/android/locationpicker/PickerUtils;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mAddressLine:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$400(Lcom/htc/android/locationpicker/PickerUtils;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils$1;->this$0:Lcom/htc/android/locationpicker/PickerUtils;

    #getter for: Lcom/htc/android/locationpicker/PickerUtils;->mAddress:Landroid/location/Address;
    invoke-static {v0}, Lcom/htc/android/locationpicker/PickerUtils;->access$500(Lcom/htc/android/locationpicker/PickerUtils;)Landroid/location/Address;

    move-result-object v6

    move v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/htc/android/locationpicker/PickerUtils$SearchListener;->onResult(ZLjava/lang/String;Ljava/lang/String;Landroid/location/Address;Z)V

    .line 155
    :cond_5
    const-string v0, "PickerUtils"

    const-string v1, "Geocoder fail !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

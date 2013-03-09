.class Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MailAccountOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailAccountOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/htcmailwidgets/MailUtils$Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLayoutRes:I

.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailAccountOption;


# direct methods
.method public constructor <init>(Lcom/htc/htcmailwidgets/MailAccountOption;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "res"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    .line 205
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 206
    iput-object p2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->mContext:Landroid/content/Context;

    .line 207
    iput p3, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->mLayoutRes:I

    .line 208
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 209
    return-void
.end method


# virtual methods
.method public changeAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailUtils$Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcmailwidgets/MailUtils$Account;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 286
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->setDataSource(Ljava/util/List;)V

    .line 287
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->notifyDataSetChanged()V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->setDataSource(Ljava/util/List;)V

    .line 290
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x2020122

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 281
    :goto_0
    return-object v4

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 224
    .local v0, account:Lcom/htc/htcmailwidgets/MailUtils$Account;
    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 229
    :cond_1
    if-nez p2, :cond_4

    .line 230
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->mLayoutRes:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 231
    new-instance v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;-><init>(Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;Lcom/htc/htcmailwidgets/MailAccountOption$1;)V

    .line 233
    .local v2, holder:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;
    const v4, 0x2020010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->accountView:Landroid/widget/TextView;

    .line 234
    const v4, 0x2020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    .line 235
    const v4, 0x2020088

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    .line 236
    const v4, 0x2020013

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->defaultView:Landroid/widget/TextView;

    .line 237
    const v4, 0x202001a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->barView:Landroid/widget/ImageView;

    .line 238
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    :goto_1
    const v4, 0x202011f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 245
    .local v3, readFrame:Landroid/view/View;
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->accountView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->coloridx:I

    if-ltz v4, :cond_5

    .line 247
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->barView:Landroid/widget/ImageView;

    iget v5, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->coloridx:I

    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailUtils;->getColorResourceId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 248
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->barView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_2
    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mResolution:I
    invoke-static {v4}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$400(Lcom/htc/htcmailwidgets/MailAccountOption;)I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 256
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->accountView:Landroid/widget/TextView;

    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 257
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 260
    :cond_2
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->defaultView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v4, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 264
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->accountView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, frame:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move-object v4, p2

    .line 269
    goto/16 :goto_0

    .line 241
    .end local v1           #frame:Landroid/view/View;
    .end local v2           #holder:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;
    .end local v3           #readFrame:Landroid/view/View;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;
    goto :goto_1

    .line 251
    .restart local v3       #readFrame:Landroid/view/View;
    :cond_5
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->barView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 272
    :cond_6
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->accountView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/htc/htcmailwidgets/MailUtils$Account;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v4, v2, Lcom/htc/htcmailwidgets/MailAccountOption$AccountAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .restart local v1       #frame:Landroid/view/View;
    if-eqz v1, :cond_7

    .line 279
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    move-object v4, p2

    .line 281
    goto/16 :goto_0
.end method

//
//  ShaidanTableViewCell.m
//  PMSC
//
//  Created by 李瑞的工作台 on 16/8/26.
//  Copyright © 2016年 李锐. All rights reserved.
//

#import "ShaidanTableViewCell.h"

@implementation ShaidanTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.imgView = [UIImageView new];
        [self.contentView addSubview:_imgView];
        self.nick = [UILabel new];
        [self.contentView addSubview:_nick];
        self.title = [UILabel new];
        [self.contentView addSubview:_title];
        self.shuomingLb = [UILabel new];
        [self.contentView addSubview:_shuomingLb];
        self.date = [UILabel new];
        [self.contentView addSubview:_date];
        self.xin = [UIImageView new];
        [self.contentView addSubview:_xin];
        self.xinlabel = [UILabel new];
        [self.contentView addSubview:_xinlabel];
        self.fenxiang = [UIImageView new];
        [self.contentView addSubview:_fenxiang];
        self.fenLabel = [UILabel new];
        [self.contentView addSubview:_fenLabel];
        for(int i= 0; i< 3;i++)
        {
            self.tupian = [[UIImageView alloc] initWithFrame:CGRectMake(i*162*kScreenWidth +i*40 *kScreenWidth + 70*kScreenWidth, 124*kScreenHeight+ 42 *kScreenHeight+32.5*kScreenHeight, 162 *kScreenHeight, 162 *kScreenHeight)];
            [self.contentView addSubview:_tupian];
            _tupian.backgroundColor = [UIColor redColor];
        }
        _xin.image = [ UIImage imageNamed:@"xin"];
        _fenxiang.image = [UIImage imageNamed:@"fenxiang"];
        self.imgView.layer.cornerRadius = 70*kScreenHeight /2;
        self.imgView.backgroundColor = [UIColor redColor];
        self.line = [UIView new];
        [self.contentView addSubview:_line];
        self.line1 = [UIView new];
        [self.contentView addSubview:_line1];
        _line.backgroundColor = kHexColor(0xeeeeee);
        _line1.backgroundColor = kHexColor(0xeeeeee);
        _nick.font = [UIFont systemFontOfSize:28*kScreenWidth];
        
        _title.font = [UIFont systemFontOfSize:28*kScreenWidth];
        _title.textColor = kHexColor(0xaeaeae);
        _shuomingLb.textColor = kHexColor(0x313131);
        _shuomingLb.font = [ UIFont systemFontOfSize:24*kScreenWidth];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imgView .frame = CGRectMake(19*kScreenWidth, 27*kScreenHeight, 70*kScreenHeight, 70*kScreenHeight);
    self.nick.frame = CGRectMake(_imgView.right + 10*kScreenHeight, _imgView.top, self.contentView.self.width, 35*kScreenHeight);
    _title.frame = CGRectMake(_nick.left, _nick.bottom, _nick.width, 35*kScreenHeight);
    _shuomingLb.frame = CGRectMake(_imgView.left, 124*kScreenHeight, self.contentView.size.width, 42*kScreenHeight);
    self.date .frame = CGRectMake(_imgView.left, (269+124)*kScreenHeight, 200*kScreenWidth, 58*kScreenHeight);
    self.xin.frame = CGRectMake(530*kScreenWidth, _date.top+6.5*kScreenHeight, 45*kScreenHeight, 45*kScreenHeight);
    self.xinlabel.frame = CGRectMake(_xin.right, _xin.top, _xin.width, _xin.height);
    self.fenxiang.frame = CGRectMake(_xinlabel.right+3, _xinlabel.top, _xin.width, _xin.height);
    _fenLabel.frame = CGRectMake(_fenxiang.right, _fenxiang.top, _fenxiang.width, _fenxiang.height);
    self.line.frame = CGRectMake(0, 124*kScreenHeight, self.contentView.frame.size.width, 0.5);
    self.line1.frame = CGRectMake(0, (269+124)*kScreenHeight, _line.width, _line.height);
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

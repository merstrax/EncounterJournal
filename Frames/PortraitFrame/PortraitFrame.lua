TitledPanelMixin = {};

function TitledPanelMixin:GetTitleText()
	return self.TitleContainer.TitleText;
end

function TitledPanelMixin:SetTitleColor(color)
	self:GetTitleText():SetTextColor(color:GetRGBA());
end

function TitledPanelMixin:SetTitle(title)
	self:GetTitleText():SetText(title);
end

function TitledPanelMixin:SetTitleFormatted(fmt, ...)
	self:GetTitleText():SetFormattedText(fmt, ...);
end

function TitledPanelMixin:SetTitleMaxLinesAndHeight(maxLines, height)
	self:GetTitleText():SetMaxLines(maxLines);
	self:GetTitleText():SetHeight(height);
end

function TitledPanelMixin:SetTitleMaxLinesAndHeight(maxLines, height)
	self:GetTitleText():SetMaxLines(maxLines);
	self:GetTitleText():SetHeight(height);
end

DefaultPanelMixin = CreateFromMixins("TitledPanelMixin");

PortraitFrameMixin = CreateFromMixins("TitledPanelMixin");

function PortraitFrameMixin:GetPortrait()
	return self.PortraitContainer.portrait;
end

function PortraitFrameMixin:SetBorder(layoutName)
	local layout = NineSliceUtil.GetLayout(layoutName);
	NineSliceUtil.ApplyLayout(self.NineSlice, layout);
end

function PortraitFrameMixin:SetPortraitToAsset(texture)
	SetPortraitToTexture(self:GetPortrait(), texture);
end

function PortraitFrameMixin:SetPortraitToUnit(unit)
	SetPortraitTexture(self:GetPortrait(), unit);
end

function PortraitFrameMixin:SetPortraitToBag(bagID)
	SetBagPortraitTexture(self:GetPortrait(), bagID);
end

function PortraitFrameMixin:SetPortraitTextureRaw(texture)
	self:GetPortrait():SetTexture(texture);
end

function PortraitFrameMixin:SetPortraitAtlasRaw(atlas, ...)
	self:GetPortrait():SetAtlas(atlas, ...);
end

function PortraitFrameMixin:SetPortraitTexCoord(...)
	self:GetPortrait():SetTexCoord(...);
end

function PortraitFrameMixin:SetPortraitShown(shown)
	self:GetPortrait():SetShown(shown);
end

function PortraitFrameMixin:SetPortraitTextureSizeAndOffset(size, offsetX, offsetY)
	local portrait = self:GetPortrait();
	portrait:SetSize(size, size);
	portrait:SetPoint("TOPLEFT", self, "TOPLEFT", offsetX, offsetY);
end

function PortraitFrameMixin:DefaultPortraitTextureSizeAndOffset()
	self:SetPortraitTextureSizeAndOffset(60, -54, 7); -- [NB] TODO: Template lookup?
end